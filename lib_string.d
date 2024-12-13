module lib_string;
import term;
import const_symbol;
import std.array;
import std.stdio;
import std.container;
import std.algorithm;

stringMapCounter makeWordPairDictionary(string text){
    //our data structure must accomodate all combination of two words and its frequency
    //but let's just focus on string
    stringMapCounter string_dict;
    //find each words separated by delimiter space
    string[] words = text.split(" ");
    //TODO: improvement to delims detection
    //split_words_by_delim(text);
    string word,word2;
    //create pairs of associative array then init the counter value to 0
    for (int i=0;i<words.length-1;i++)
    {
        word=words[i];
        word2=words[i+1];
        stringMap curMap;
        curMap[word] = word2;
        string_dict[curMap] = 0;
    }
    return string_dict;
}

