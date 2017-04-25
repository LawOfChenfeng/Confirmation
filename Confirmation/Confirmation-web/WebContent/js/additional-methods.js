jQuery.validator.addMethod("isKSH", function(value) {
    var tel = /^[1-9][0-9]43\d{10}$/;
    var result = tel.test(value);
    return result;
}, "Please fill in your candidate number");

jQuery.validator.addMethod("isPWD", function(value) {
    var tel = /^[0-3][0-9]\d{3}[0-9X]$/;
    var result = tel.test(value);
    return result;
}, "Please fill in your ID number 6");