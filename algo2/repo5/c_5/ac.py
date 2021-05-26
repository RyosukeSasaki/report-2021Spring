#!/usr/bin/env python

class MachineAC:
    class State:
        def __init__ (self, id):
            self.id   = id
            self.next = {}

        def has_key(self, x):
            return x in self.next

    def __init__ (self, terms):
        self.state  = [ MachineAC.State(0) ]
        self.output = [[]]
        self._make_goto(terms)
        self._make_failure()

    def _make_goto(self, terms):
        for term in terms:
            cur = self.state[0]
            for x in term:
                if not cur.has_key(x):
                    new = MachineAC.State( len(self.state) )
                    cur.next[x] = new
                    self.state.append(new)
                    self.output.append([])
                cur = cur.next[x]
            s = cur.id
            self.output[s].append(term)

    def _make_failure(self):
        failure = [0] * len(self.state)
        print(failure)
        queue   = [ 0 ]
        while len(queue) > 0:
            s = queue.pop(0)
            for x in self.state[s].next.keys():
                next = self.g(s, x)
                print(s, x, next)
                if next is not None:
                    queue.append(next)
                if s != 0:
                    f = failure[s]
                    while self.g(f, x) is None:
                        f = failure[f]
                    failure[next] = self.g(f, x)
                    self.output[next].extend( self.output[failure[next]] )
                    print(failure)
        self.failure = failure
        print(self.output)

    def g(self, s, x):
        if x in self.state[s].next:
            return self.state[s].next[x].id
        else:
            if s == 0:
                return 0
            else:
                return

    def match (self, query):
        s = 0
        for i in range(len(query)):
            while self.g(s, query[i]) is None:
                s = self.failure[s]
            s = self.g(s, query[i])
            for x in self.output[s]:
                print ('%d,%d => %s' % (i - len(x) + 1, i, x))

ac = MachineAC(['a', 'dab', 'ab'])

print ('in: xbabcdex')
ac.match('xbabcdex')

print ('in: abc')
ac.match('abc')