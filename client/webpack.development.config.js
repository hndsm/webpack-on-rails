// Run like this:
// cd client && webpack-dev-server --config webpack.development.config.js --hot --colors --progress --inline

var config = require("./webpack.base.config");
var webpack = require("webpack");
var path = require("path");

config.debug = true;
config.displayErrorDetails = true;

config.entry.main.push(
  'webpack/hot/dev-server'
);

config.output = {
  path: "../app/assets/javascripts",
  filename: "[name]_webpack_bundle.js",
  publicPath: 'http://localhost:8080/assets/javascripts/'
};

config.module.loaders.push(
  { test: /\.jsx$/, loaders: ["jsx?harmony"] },
  { test: /\.css$/, loader: "style!css" },
  // { test: /\.scss$/, loader: "style!css!sass?outputStyle=expanded&includePaths[]=" + path.resolve(__dirname, "./assets/stylesheets")},

  { test: /\.png$/, loader: "url-loader?limit=100000&mimetype=image/png" },
  { test: /\.jpg$/, loader: "file-loader" },

  { test: /\.woff$/,  loader: "url-loader?limit=10000&minetype=application/font-woff" },
  { test: /\.woff2$/, loader: "url-loader?limit=10000&minetype=application/font-woff" },
  { test: /\.ttf$/,   loader: "file-loader" },
  { test: /\.eot$/,   loader: "file-loader" },
  { test: /\.svg$/,   loader: "file-loader" }
);

config.plugins.push(
  new webpack.optimize.OccurenceOrderPlugin()
)

module.exports = config;
