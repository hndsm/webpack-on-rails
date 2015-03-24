React         = require("react");
Router        = require('react-router');
Route         = Router.Route;
NotFoundRoute = Router.NotFoundRoute;
DefaultRoute  = Router.DefaultRoute;

App      = require('components/App');
Main     = require('components/Main');
NotFound = require('components/NotFound');
List     = require('components/List');

module.exports =
  <Route name="app" path="/" handler={App}>
    <NotFoundRoute handler={NotFound}/>
    <DefaultRoute handler={Main}/>

    <Route path='/list' handler={List} />
  </Route>
