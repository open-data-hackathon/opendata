module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js',
    "./app/**/*.{html, js, ts, vue}", 
    "./app/**/*"
  ],
  plugins: [require("daisyui")],
}
