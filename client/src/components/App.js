import { BrowserRouter as Router, Route, Switch, Link } from 'react-router-dom';
import PlacesPage from "./PlacesPage";

function App() {
  return (
    <Router>
      <>

        <Switch>
          <Route exact path="/">
            <PlacesPage />
          </Route>
        </Switch>
      </>
    </Router>
  );
}

export default App;
