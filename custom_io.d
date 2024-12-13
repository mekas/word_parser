module custom_io;
import std.stdio;
import term;

string parseInput(string path)
{
    string text = "";

    File f = File(path, "r");
    while (!f.eof())
    {
        string line = f.readln();
        text ~= line;
    }
    f.close();
    return text;
}

void printWordDictCounter(stringMapCounter dict)
{
    foreach (map, val; dict)
    {
        writefln("%s = %d", map, val);
    }
}
