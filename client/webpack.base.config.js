// Common webpack configuration used by other webpack configurations

var path    = require("path");
var webpack = require('webpack');

module.exports = {
  context: __dirname,
  entry: {
    main: [
      "./assets/javascripts/app"
    ],
    styles: [
      "./assets/stylesheets/app"
    ]
  },

  resolve: {
    root: [
            path.join(__dirname, "./assets/javascripts"),
            path.join(__dirname, "./assets/stylesheets")
          ],
    extensions: [
      "",
      ".webpack.js",
      ".web.js",
      ".js",
      ".jsx",
      ".css",
      ".coffee",
      ".cjsx",
      "config.js"
    ]
  },

  module: {
    loaders: []
  },

  plugins: [
    new webpack.NoErrorsPlugin()
  ]
};
