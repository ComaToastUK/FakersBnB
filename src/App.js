import React, { Component } from 'react';
import logo from './F2.jpg';
import './App.css';
import Background from './fakershome.jpg';

class App extends Component {
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h1 className="App-title">Welcome to FakersBnB </h1>
        </header>
        <p className="App-intro">
          The cornerstone of any fake holiday!
        </p>

        <p className="App-dropdowns">
          What do you want to do today?

          <div className="tab">
            <button className="tablinks" click="openCity(event, 'London')">See available homes</button>
            <button className="tablinks" click="openCity(event, 'Paris')">See experiences</button>
            <button className="tablinks" click="openCity(event, 'Tokyo')">See Restaurants</button>
          </div>
        </p>

      </div>
    );
  }
}

export default App;
