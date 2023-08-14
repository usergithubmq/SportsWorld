import React from 'react';

const Alerta = ({ alerta }) => {
  return (
    <div className={`${alerta.error ? 'from-red-500 to-red-700' : 'from-gray-600 to-gray-800'} bg-gradient-to-br text-center p-3 rounded-xl uppercase text-white font-bold text-sm `}>
      {alerta.msg}
    </div>
  );
}

export default Alerta;
