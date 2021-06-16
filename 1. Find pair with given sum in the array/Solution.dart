/*
Input:
 
arr = [8, 7, 2, 5, 3, 1]
sum = 10
 
Output:
 
Pair found (8, 2)
or
Pair found (7, 3)
 
 
Input:
 
arr = [5, 2, 6, 8, 1, 9]
sum = 12
 
Output: Pair not found
*/


void main(){

    var yo = pairOfSum([8, 7, 2, 5, 3, 1], 10);
    print(yo);
}

dynamic pairOfSum(List myList, int sum){
    List result = [];

    for (int number in myList){
        for (int i = 0 ; i < myList.length; i++){
            if ( i == myList.indexOf(number)){
                continue; 
            }
            if (myList[i] + number == sum){
                result.add([myList[i], number]);
            }
        }
    }

    if(result.isEmpty){
        return 'Pair not found';
    }
    List okay = [];
    
    result.forEach((l){
      (l as List).sort();
      okay.add(l);
    });
  
  
    
 Map myMap = {};
  
  okay.forEach((yes){
    myMap.addAll({yes[0]:yes[1]});
  });
  
  List lastOne = [];
  
  myMap.forEach((k,v){
    
    lastOne.add([k,v]);
  });
  
    return lastOne;
}



  









