import "dart:io";
import "dart:core";
import "dart:convert";
void shell(){
    var quit=false;
    while(quit==false){
    stdout.write(">");
    var input = stdin.readLineSync();
    input=input.toString();
    var query;
    var ans;
    if(input.contains("+")){
        query=input.split("+");
        ans=int.parse(query[0])+int.parse(query[1]);
    }
    else if(input.contains("-")){
        query=input.split("-");
        ans=int.parse(query[0])-int.parse(query[1]);
    }
    else if(input.contains("*")){
        query=input.split("*");
        ans=int.parse(query[0])*int.parse(query[1]);
    }
    else if(input.contains("/")){
        query=input.split("/");
        ans=int.parse(query[0])/int.parse(query[1]);
    };
    print(ans);
    stdout.write("Do you wish to continue? ");
    var cont=stdin.readLineSync();
    if(cont=="no"){
      quit=true;
    }
    }
}
void file(){
    stdout.write("File Name ");
    String inp=stdin.readLineSync().toString();
    File(inp).readAsString().then((String f){
    var qs=f.split("\n");
    for(String input in qs){
    var query;
    var ans;
        if(input.contains("+")){
        query=input.split("+");
        ans=int.parse(query[0])+int.parse(query[1]);
    }
    else if(input.contains("-")){
        query=input.split("-");
        ans=int.parse(query[0])-int.parse(query[1]);
    }
    else if(input.contains("*")){
        query=input.split("*");
        ans=int.parse(query[0])*int.parse(query[1]);
    }
    else if(input.contains("/")){
        query=input.split("/");
        ans=int.parse(query[0])/int.parse(query[1]);
    };
    print('$input=$ans');
    }
    });
}
void main(){
    stdout.write("Choose the word 'File' or 'Shell'");
    var input=stdin.readLineSync();
    if(input=="Shell"){  
        shell();
    }
    else if(input=="File"){
        file();
    }
}