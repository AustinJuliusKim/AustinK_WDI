var gulp         = require("gulp");
var uglify       = require("gulp-uglify");
var sass         = require("gulp-sass");
var autoprefixer = require("gulp-autoprefixer");


// to build a new task we use gulp.task
gulp.task("process-scss", function(){
	gulp.src("scss/*.scss")
		.pipe(sass().on("error", sass.logError))
		.pipe(autoprefixer({browsers: ["last 2 versions"]}))
		.pipe(gulp.dest("build/css"));
})

gulp.task("scripts", function(){
	gulp.src("js/*.js") // allows us to target file(s) to minify
		.pipe(uglify()) // performs the task
		.pipe(gulp.dest("build/js")); // save the output of task
});

// this will automate task and run script and process tasks when files are changed
gulp.task("watch", function(){
	gulp.watch("js/*.js", ["scripts"]);
	gulp.watch("scss/*.scss", ["process-scss"])
});

// we can pass an array of tasks that will build tasks
gulp.task("default", ["scripts", "process-scss", "watch"]);

