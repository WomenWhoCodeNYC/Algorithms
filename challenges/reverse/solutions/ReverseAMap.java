//  https://github.com/WomenWhoCodeNYC/Algorithms/blob/master/challenges/reverse/reverse.md

/*

Level 6

Create a function called reverse() that takes in a set of key-value pairs
(object in Javascript, hash in Ruby, dictionary in Python, etc.) as the input and returns an object
with the same keys and values inverted. If multiple keys have the same value, it should assign of array of keys.

Example: inputObject: {'a':1, 'b':2}

reverse(inputObject) should return {1:'b', 2:'c'}

inputObject2 = { "a": "1", "b": "2", "c": "1", "d": "3" }

reverse(inputObject2) should return { "1": ["a", "c"], "2": ["b"] "3": ["d"] }


*/

import java.util.*;
import static java.util.Map.Entry;

public class ReverseAMap {

    // imperative style of coding
    public static Map reverseMapImperatively(Map<String, String> inputMap){
        Map<String, List<String>> outputMap = new HashMap<>();
        String newKey, newValue;
        List<String> list;
        for(Entry<String, String> entry : inputMap.entrySet()) {
            newKey = entry.getValue();
            newValue = entry.getKey();
            if(outputMap.containsKey(newKey))
                list = outputMap.get(newKey);
            else {
                list = new ArrayList<String>();
                outputMap.put(newKey, list);
            }
            list.add(newValue);
        }
        return outputMap;
    }

    // declarative style of coding
    public static Map reverseMapDeclaratively(Map<String, String> inputMap) {
        Map<String, List<String>> outputMap = new HashMap<>();
        inputMap.forEach((key,value) -> outputMap.merge(value, List.of(key), ReverseAMap::mergeListsOfValues));
        return outputMap;
    }

    private static List<String> mergeListsOfValues(List<String> key1, List<String> key2) {
        List<String> valuesList = new ArrayList<>(key1);
        valuesList.addAll(key2);
        return valuesList;
        /*
            // if need the merged list to be in a sorted order
            Set<String> set = new TreeSet<>(key1);
            set.addAll(key2);
            return new ArrayList<>(set);
        */
    }

    public static void main(String[] args) {
        Map<String,String> map = Map.of("a","1", "b","2", "c", "1", "d", "3", "as", "3");   // Java 9
        System.out.println(reverseMapImperatively(map));
        System.out.println(reverseMapDeclaratively(map));
    }
}