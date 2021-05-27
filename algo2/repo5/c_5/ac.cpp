#include <unordered_map>
#include <vector>
#include <queue>
#include <iostream>
#include <fstream>
#include <string>
#include <sys/time.h>

typedef struct StateMachine
{
    private:
        const int _id;
    public:
        std::unordered_map<char, StateMachine*> next;
        StateMachine(int id) : _id(id){}
        bool has_key(const char &x){
            if(this->next.find(x)==this->next.end()) return false;
            return true;
        }
        void add_next(const char &x, StateMachine* ptr){ next[x] = ptr; }
        StateMachine* get_next(const char &x){ return next[x]; }
        int get_id(){ return _id; }
} _STATEMACHINE;

class MachineAC
{
    public:
        MachineAC(std::vector<std::string> &patterns){
            state.push_back(new StateMachine(0));
            make_goto(patterns);
            make_failure();
        }
        ~MachineAC(){ for(int i = 0; i < state.size(); i++) delete state[i]; }
        void match(std::string &text){
            StateMachine *s = state[0];
            for(int i = 0; i < text.size(); i++){
                while(go(s, text[i]) == 0) s = failure[s->get_id()];
                s = go(s, text[i]);
                for(std::string found : output[s])
                    std::cout << found << "\tfrom " << i-found.size()+1 << " to " << i << std::endl;;
            }
        }

    private:
        std::vector<StateMachine*> state;
        std::vector<StateMachine*> failure;
        std::unordered_map<StateMachine*, std::vector<std::string>> output;
        void make_goto(std::vector<std::string> &patterns){
            for(std::string pattern : patterns){
                StateMachine *current = state[0];
                for(char& p : pattern){
                    if(!current->has_key(p)){
                        StateMachine *next = new StateMachine(state.size());
                        current->add_next(p, next);
                        state.push_back(next);
                    }
                    current = current->get_next(p);
                }
                output[current].push_back(pattern);
            }
        }
        void make_failure(){
            failure.resize(this->state.size());
            std::fill(failure.begin(), failure.end(), this->state[0]);
            std::queue<StateMachine*> queue;
            StateMachine *state;
            StateMachine *next;
            StateMachine *f;
            queue.push(this->state[0]);
            while(queue.size()){
                state = queue.front();
                for(auto itr = state->next.begin(); itr != state->next.end(); itr++){
                    next = go(state, itr->first);
                    if(next != 0) queue.push(next);
                    if(state != this->state[0]){
                        f = failure[state->get_id()];
                        while(go(f, itr->first) == 0) f = failure[f->get_id()];
                        failure[next->get_id()] = go(f, itr->first);
                        output[next].insert(output[next].end(),
                            output[failure[next->get_id()]].begin(), output[failure[next->get_id()]].end());
                    }
                }
                queue.pop();
            }
        }
        StateMachine* go(StateMachine *state, const char &x){
            if(state->has_key(x)){
                return state->get_next(x);
            }else if(state->get_id() == 0){
                return state;
            }else{
                return 0;
            }
        }
};

int main(void)
{
    std::vector<std::string> patterns{"12345"};
    MachineAC machine(patterns);
    std::ifstream ifs("./pi.dat");
    std::string text;
    struct timeval stime, etime;
	double sec;

    if(ifs.fail()){
        std::cout << "Failed opening file" << std::endl;
        return -1;
    }
    getline(ifs, text);
	gettimeofday(&stime, NULL);

    machine.match(text);

    gettimeofday(&etime, NULL);
	sec = (etime.tv_sec - stime.tv_sec) + 
			(etime.tv_usec - stime.tv_usec) / 1000000.0;
	printf("Elapsed Time %.4f [sec] \n", sec);
}