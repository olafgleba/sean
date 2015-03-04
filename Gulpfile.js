var gulp = require('gulp');
var sourcemaps = require('gulp-sourcemaps');
var sass = require('gulp-sass');
var rename = require('gulp-rename');
var concat = require('gulp-concat');
var autoprefixer = require('gulp-autoprefixer');
var modernizr = require('gulp-modernizr');
var filter = require('gulp-filter');
var jshint = require('gulp-jshint');
var hologram = require('gulp-hologram');
var browserSync = require('browser-sync');
var reload = browserSync.reload;
var opn = require('opn');



gulp.task('browser-sync', function() {
    browserSync({
        server: {
            baseDir: "./app"
        }
    });
});



/**
 * Development
 */

gulp.task('lint', function() {
  return gulp.src('source/libs/base.js')
    .pipe(jshint('.jshintrc'))
    .pipe(jshint.reporter('jshint-stylish'));
});

// currently libsass only supports `nested` and `compressed`
gulp.task('sass-devel', function() {
  return gulp.src('source/sass/**/*.scss')
    //gulp.pipe(sourcemaps.init())
    .pipe(sass({ outputStyle: 'nested' }))
    .pipe(autoprefixer())
    //.pipe(sourcemaps.write())
    .pipe(rename({suffix: '.min'}))
    .pipe(gulp.dest('app/assets/css'))
    //.pipe(filter('**/*.css')) // Filtering stream to only css files (comment out when using sourcemaps)
    .pipe(reload({stream:true}));
});

gulp.task('js-base-devel', function() {
  return gulp.src('source/libs/base.js')
    .pipe(rename({suffix: '.min'}))
    .pipe(gulp.dest('app/assets/libs'));
});

gulp.task('js-plugins-devel', function() {
  return gulp.src('source/libs/vendor/*.js')
    .pipe(concat('plugins.js'))
    .pipe(rename({suffix: '.min'}))
    .pipe(gulp.dest('app/assets/libs/vendor'));
});


gulp.task('modernizr', function() {
  gulp.src('source/**/*.{js,scss}')
    .pipe(modernizr('modernizr-custom.min.js'))
    .pipe(gulp.dest("app/assets/libs/vendor"))
});



gulp.task('hologram', function() {
  gulp.src('styleguide/config.yml')
    .pipe(hologram());
});


// Push jquery directly into app folder
// since we don't process those files
gulp.task('js-jquery', function() {
  gulp.src(['./bower_components/jquery/dist/jquery.min.js', './bower_components/jquery/dist/jquery.min.map'])
    .pipe(gulp.dest('app/assets/libs/vendor'));
});




// Development
gulp.task('default', ['sass-devel', 'lint', 'js-jquery', 'modernizr', 'js-base-devel', 'js-plugins-devel', 'hologram', 'browser-sync'], function() {

    gulp.watch('source/sass/**/*.scss', ['sass-devel', 'hologram']);
    gulp.watch('source/libs/**/*.js', ['lint', 'js-base-devel', 'js-plugins-devel', browserSync.reload]);
    gulp.watch("app/*.html").on("change", browserSync.reload);
    gulp.watch('styleguide/**/*.{html,yml}', ['hologram', browserSync.reload]);

});


