function check_braces(expressions) {
 var result;
 var string;
    for (var i = 0; i < expressions.length; i++){
        string = expressions[i];
        if (string.length % 2 === 0){
            string = string.split("");
            for (var j = 0; j < string.length; j ++){
                if (string[j] === "["){
                    if (string[(j+1)] === "]" || string[j+3] === "]" || string[j+5] === "]"|| string[j+7]==="]"){
                        result = 1;  
                    } else {
                        result = 0;
                    }
                } 
                if (string[j] === "("){
                    if (string[(j+1)] === ")" || string[j+3]=== ")" || string[j+5]===")" || string[j+7]===")"){
                        result = 1;
                    } else {
                        result = 0;
                    }
                } 
                if (string[j] === "{"){
                    if (string[(j+1)] === "}" || string[j+3] === "}" || string[j+5]==="}" || string[j+7]==="}"){
                        result = 1;
                    } else {
                        result = 0;
                    }
                }
            }
        } else {
            result = 0;
        }
    console.log(result);
    }
}

var expressions = [ ")(){}", "[]({})", "([])", "{()[]}", "([)]" ];