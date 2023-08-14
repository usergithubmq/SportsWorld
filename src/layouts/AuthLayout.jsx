import {Outlet} from 'react-router-dom'

const AuthLayout = () => {
  return (
    <>
      <main className='container mx-auto md:mt-10 md:flex md:justify-end'>
        <div className='lg:w-2/5 '>
          <Outlet/>
        </div>
      </main>
    </>
  )
}

export default AuthLayout
