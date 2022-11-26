


//#include <CGAL/Homogeneous_d.h>
//#include <CGAL/leda_integer.h>
#include <CGAL/Cartesian_d.h>
//#include <CGAL/leda_bigfloat.h>
#include <CGAL/Delaunay_d.h>

#include <list>
#include <iostream>
#include <fstream>
#include "triangulation1.hpp"

typedef double RT;
typedef CGAL::Cartesian_d<RT> Kernel;
typedef CGAL::Delaunay_d<Kernel> Delaunay_d;
typedef Delaunay_d::Point_d Point;
typedef Delaunay_d::Simplex_handle Simplex_handle;
typedef Delaunay_d::Vertex_handle Vertex_handle;

void debug(double *a, int num){
    using namespace std;
    for (int i = 0; i <num ; ++i) {
        cout << a[i] << " ";
    }
    cout << endl;
}
void debug(double **da, int num, int dim){
    using namespace std;
    for (int i = 0; i <num ; ++i) {
        for (int j = 0; j < dim; ++j) {
//            cout << i << " "<< j << " "<<endl;
            cout << da[i][j] << " ";
        }
        cout << endl;
    }
}

#define MILLION 1000000.0
int cell_cnt= 0;
clock_t gbegin;
double **rows;
double *c;
double **convexrs;
size_t covex_facet_num;
double *obj_vec;
int g_dim;
double **nc_row;
double cnstrn_ra[] = {0, 1, 1, 1, 1};
double *cnstrn_r = cnstrn_ra;
double cnstrn_c = 1.25;
bool OBSERVATION1 = true;
bool OBSERVATION2 = true;
bool OBSERVATION3 = true;
bool OBSERVATION4 = false;
bool OBSERVATION5 = true;
int prunK = 512;
int g_w_num;
int lp_cnt=0;

const char *read_para(const int a_argc, const char **a_argv, const char *a_param) {
    for (int i = 0; i < a_argc; i++)
    {
        if (strcmp(a_argv[i], a_param) == 0)
        {
            if (i + 1 == a_argc)
                return "";
            else
                return a_argv[i + 1];
        }
    }
}

#include <string>
using namespace std;
int main2(){
    fstream fpdata;
    fpdata.open(fileName, ios::in);
    fpdata;
    cin.getline()
}

int main(const int argc, const char** argv)
{
    int dim = atoi(read_para(argc, argv, "-d"));
    int k = atoi(read_para(argc, argv, "-k"));
    const char* userfile = read_para(argc, argv, "-u");
    const char* pdtfile = read_para(argc, argv, "-p");
    const char* pfile = read_para(argc, argv, "-P");
    int user_num = atoi(read_para(argc, argv, "-un"));
    int pdt_num = atoi(read_para(argc, argv, "-pn"));
    int P_num = atoi(read_para(argc, argv, "-Pn"));
    /*
     * -d 4 -k 10 -u USER4d10k.txt -p HOTEL4D.txt -P HOTEL4D_P.txt -un 5000 -pn 186637 -Pn 10000
     * -obs1 1 -obs2 1 -obs3 1 -obs4 0 -obs5 1 -prunk 512 -p_gen 10000000 -out 1 -stdout 0
     */
    OBSERVATION1 = atoi(read_para(argc, argv, "-obs1"));
    OBSERVATION2 = atoi(read_para(argc, argv, "-obs2"));
    OBSERVATION3 = atoi(read_para(argc, argv, "-obs3"));
    OBSERVATION4 = atoi(read_para(argc, argv, "-obs4"));
    prunK = atoi(read_para(argc, argv, "-prunk"));
    int out_id = atoi(read_para(argc, argv, "-out"));
    int p_gen = atoi(read_para(argc, argv, "-p_gen"));
    string outname = string("../out/out")+to_string(out_id)+string(".txt");
    cout << outname << endl;
    std::ofstream out(outname);
    auto coutbuf = std::cout.rdbuf(out.rdbuf()); //save and redirect

    for (int i = 0; i <argc ; ++i) {
        cout << argv[i] << " " ;
    }
    cout << endl;
    printf("test hello\n");
    return 0;
    //    size_t num_dim,num_points;
//    printf("Reading points.dat input file ..\n");
//    std::fstream input("p30d4.txt",std::ios::in);
//    size_t domain;
//    input >> num_dim >> num_points >> domain;
//    float** x = new float* [num_points];
//    double bla;
//    for (int i = 0; i < num_points; i++)
//    {
//        x[i] = new float [num_dim];
//        for (int j = 0; j < num_dim; j++)
//        {
//            input >> x[i][j];
//        }
//    }
//    input.close();
//    printf("\t Done Reading ..\n");
//    printf("\t num_points = %i ..\n", num_points);
////    int p[]={0,1, 2, 3, 4, 5, 6, 7, 8 , 9 , 10};
//    int p []={17
//            ,0
//            ,24
//            ,1
//            ,12
//            ,9
//            ,20
//            ,27
//            ,16
//            ,7};
//    int p_size = num_points;
//    size_t ret_size=0;
//    double ** row = get_convexhull(p, 10, x, num_dim, &ret_size);
//    return 0;
}