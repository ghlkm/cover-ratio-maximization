#include <queue>
#include <list>
#include <vector>
using namespace std;
class node{
public:
    explicit node(int v=0){
        val = v;
        left = nullptr;
        right = nullptr;
    }
    ~node(){
        if(left){
            delete(left);
        }
        if(right){
            delete(right);
        }
    }
    int val;
    node *left;
    node *right;
};

list<node *> bfs(node * rt){
    list<node *>ret;
    queue<node *>q;
    if(rt){
        q.push(rt);
    }
    node *cur;
    while(!q.empty()){
        cur=q.front();
        q.pop();
        if(cur->right){
            q.push(cur->right);
        }
        if(cur->left){
            q.push(cur->left);
        }
    }
    return ret;
}

void demo(){
     node *rt = new node();
    /**
     * build a tree  //TODO
     */
     auto ret = bfs(rt);
     delete(rt);
}