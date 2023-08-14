import { BrowserRouter, Routes, Route } from 'react-router-dom';


import AuthLayout from './layouts/AuthLayout'

import Login from './pages/login'

const App = () => {
  return (
    <BrowserRouter>
        <Routes>
          <Route path="/" element={<AuthLayout/> }>
            <Route index element={<Login/>} />
            <Route path="login" element={<Login/>} />
          </Route>
        </Routes>
    </BrowserRouter>
  )
}

export default App
