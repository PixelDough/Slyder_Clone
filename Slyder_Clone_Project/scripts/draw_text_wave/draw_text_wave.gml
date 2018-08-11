///@argument x
///@argument y
///@argument string

var myString = argument2;

var draw_x = argument0;
var draw_y = argument1;

var intensity = 2; //shakeyness

//get how long the string is in terms of width
var length = string_length(string(myString));

for(var i=1;i<=length;i++) { //loop through each character of the string
    var str = string_copy(myString,i,1); //1 character of the string 
    var length_so_far = string_width(string_copy(myString,1,i)); //how far to offset the text
	draw_set_color(make_color_hsv(global.time + (25 * length_so_far), 100, 255))
    draw_text(draw_x+length_so_far,draw_y+sin((global.time + length_so_far)/10),str);
}