
#include "triangulation1.hpp"

#include <CGAL/Cartesian_d.h>

#include <list>
#include <iostream>
#include <CGAL/Convex_hull_d.h>

typedef double RT;
typedef CGAL::Cartesian_d<RT> Kernel;
typedef CGAL::Convex_hull_d<Kernel> Convex_hull_d;
typedef Convex_hull_d::Point_d Point;
typedef Convex_hull_d::Simplex_handle Simplex_handle;
typedef Convex_hull_d::Vertex_handle Vertex_handle;

#include <vector>
#include <set>
#include <algorithm>
double **remove_dup_facet(double ** r, size_t num, size_t dim, size_t * new_r_size){
    using namespace std;
    set<vector<double>> s;
    for (size_t i = 0; i < num; ++i) {
        //  std::vector<int> fifth (myints, myints + sizeof(myints) / sizeof(int) );
        vector<double> v(r[i], r[i]+dim);
        s.insert(v);
    }
    cout << "after remove duplicate facets: " << num << "-->" << s.size() << endl;
    double ** ret = new double*[s.size()];
    int cnt=0;
    for (auto &v:s) {
        v.data();
        ret[cnt]  = new double[v.size()];
        copy(v.begin(), v.end(), ret[cnt]);
        ++cnt;
    }
    *new_r_size = s.size();
    return ret;
}

std::set<std::vector<double>> remove_dup_array(const int *p, size_t p_size, float **pdt, size_t pdt_dim){
    using namespace std;
    set<vector<double>> s;
    for (size_t i = 0; i < p_size; ++i) {
        vector<double> v(pdt[p[i]], pdt[p[i]]+pdt_dim);
        if(s.find(v)==s.end()){
            s.insert(v);
        }
    }
    float tmp;
    for (size_t j = 0; j < pdt_dim; ++j) {
        for (size_t i = 0; i < p_size; ++i) {
            tmp = pdt[p[i]][j];
            pdt[p[i]][j] = 0;
            vector<double> v(pdt[p[i]], pdt[p[i]]+pdt_dim);
            if(s.find(v)==s.end()){
                s.insert(v);
            }
            pdt[p[i]][j]= tmp;
        }
    }
    vector<double> v(pdt_dim, 0);
    if(s.find(v)==s.end()){
        s.insert(v);
    }
    cout << "Done: remove dul pdt: "<< p_size*(pdt_dim+1)+1 << " --> " << s.size() << endl;
    return s;
}
double ** get_convexhull(std::vector<int> const &p, float **pdt, size_t pdt_dim, size_t *ret_size) {
    get_convexhull(p.data(), p.size(), pdt, pdt_dim, ret_size);
}


double ** get_convexhull(const int *p, size_t p_size, float **pdt, size_t pdt_dim, size_t *ret_size){
    /**
     * point num is
     * pdt_cnt + projection_cnt + 1 (original point)
     * projection_cnt = pdt_cnt*pdt_dim
     */
//    std::list<Point> lps;
    Convex_hull_d T(pdt_dim);
    auto A = new Vertex_handle[p_size+p_size*pdt_dim+1];
    auto new_pdt = remove_dup_array(p ,p_size, pdt, pdt_dim);
    printf("Begin: insertion of convex_hull\n");
    int insert_pdt_cnt = 0;
    for(auto &pt:new_pdt){
        A[insert_pdt_cnt] = T.insert(Point(pt.size(), pt.begin(), pt.end()));
        ++insert_pdt_cnt;
    }

    T.print_statistics();

    int facets_size = T.all_facets().size();
    auto const &all_facet = T.all_facets();
    double **loc_rows = new double*[facets_size];
    int cnt = 0;
    for(auto const &f:T.all_facets()){
        auto const &hp = T.hyperplane_supporting(f);
        loc_rows[cnt] = new double[pdt_dim+1]; //{0, ....}
        assert(hp.coefficient_vector().dimension()==pdt_dim+1);
        for (size_t i = 0; i < pdt_dim ; ++i) {
            loc_rows[cnt][i+1] = hp[i];
        }
        loc_rows[cnt][0] = -hp[pdt_dim]; // not the same as lp_solve so need minus
        /*
         *  hyperplane_supporting()
         *      returns a hyperplane supporting facet f.
         *      The hyperplane is oriented such that the interior of C is on the negative side of it.
         *
         *  So any the points p in the convex hull:
         *      p dot loc_rows[cnt] < c[cnt]
         *      p dot loc_rows[cnt] + hp[pdt_dim] < 0
         */
        ++cnt;
    }

    printf("Done: constructing convex hull...\n");
    double ** new_rows = remove_dup_facet(loc_rows, facets_size, pdt_dim+1, ret_size);
    delete[] (A);
    for (int l = 0; l < facets_size; ++l) {
        delete[](loc_rows[l]);
    }
    delete[](loc_rows);
    return  new_rows;
}