import std.stdio;
import custom_io;
import term;
import std.array;
import lib_string;

int main(){
    string path = "data.txt";
    string text_data = parseInput(path);

    stringMapCounter wordDictCounter = makeWordPairDictionary(text_data);
    //writeln(wordDictCounter.length);
    //printWordDictCounter(wordDictCounter);

    return 0;
}


