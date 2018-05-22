///
// same as Python's range function with two parameters
.list.range: {[start; stop]
  :start + til stop - start;
  };

///
// same as Python's range function with three parameters
.list.steprange: {[start; stop; step]
  :start + step * til (stop - start) div step;
  };

///
// returns a new list in which parameter obj is inserted at position index of list l
// similar to Python's list.insert function except that it does no modify list inplace
.list.insert: {[l; index; obj]
  :#[index; l], obj, index _ l;
  };

///
// pops last element from the list and returns last element
// same as Python's list.pop function
//
// example usage:
// l: til 5;
// .list.pop `l
.list.pop: {[l]
  obj: last value l;
  l set -1_value l;
  :obj;
  };