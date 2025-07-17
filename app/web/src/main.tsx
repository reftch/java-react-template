import React from "react";
// import './index.css'
// import { createRoot } from "react-dom/client";

// const App = () => {

// 	return (
// 		<>
// 			<h1>Hello from ESBuild + React + TypeScript!</h1>
// 		</>
// 	)
// };

// const root = createRoot(document.getElementById("root")!);
// root.render(<App />);

import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './styles.css'
import App from './App.tsx'

createRoot(document.getElementById('root')!).render(
  <StrictMode>
    <App />
  </StrictMode>,
)