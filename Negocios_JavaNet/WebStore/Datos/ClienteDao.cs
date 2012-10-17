using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.Common;
using System.Data;

using WebStore.Entidades;


namespace WebStore.Datos
{
    public class ClienteDao
    {

        public ClienteDao()
        { }

        public static string constr
        {
            get { return ConfigurationManager.ConnectionStrings["cnxjavanet"].ConnectionString; }
        }

        public static string Provider
        {
            get { return ConfigurationManager.ConnectionStrings["cnxjavanet"].ProviderName; }
        }

        public static DbProviderFactory dpf
        {
            get { return DbProviderFactories.GetFactory(Provider); }
        }

        private static int ejecutaNonQuery(string StoredProcedure, List<DbParameter> parametros) 
        {
            int Id = 0;
            try
            {
                using (DbConnection con = dpf.CreateConnection())
                {
                    con.ConnectionString = constr;
                    using (DbCommand cmd = dpf.CreateCommand())
                    {
                        cmd.Connection = con;
                        cmd.CommandText = StoredProcedure;
                        cmd.CommandType = CommandType.StoredProcedure;

                        foreach (DbParameter param in parametros)
                            cmd.Parameters.Add(param);
                        con.Open();
                        Id = cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                // contion.close();
            }
            return Id;
        }

        public int InsertarCliente(string Dni, string Nombres, string Apellidos, string Email, string Direccion, string Celular, string Contrasena, int Estado)
        {
            List<DbParameter> parametros = new List<DbParameter>();

            DbParameter param1 = dpf.CreateParameter();
            param1.Value = Dni;
            param1.ParameterName = "dni";
            parametros.Add(param1);

            DbParameter param2 = dpf.CreateParameter();
            param2.Value = Nombres;
            param2.ParameterName = "nombres";
            parametros.Add(param2);

            DbParameter param3 = dpf.CreateParameter();
            param3.Value = Apellidos;
            param3.ParameterName = "apellidos";
            parametros.Add(param3);

            DbParameter param4 = dpf.CreateParameter();
            param4.Value = Email;
            param4.ParameterName = "email";
            parametros.Add(param4);

            DbParameter param5 = dpf.CreateParameter();
            param5.Value = Direccion;
            param5.ParameterName = "direccion";
            parametros.Add(param5);

            DbParameter param6 = dpf.CreateParameter();
            param6.Value = Celular;
            param6.ParameterName = "celular";
            parametros.Add(param6);

            DbParameter param7 = dpf.CreateParameter();
            param7.Value = Contrasena;
            param7.ParameterName = "contrasena";
            parametros.Add(param7);

            DbParameter param8 = dpf.CreateParameter();
            param8.Value = Estado;
            param8.ParameterName = "estado";
            parametros.Add(param8);

            return ejecutaNonQuery("grabacliente", parametros);
        }

        public int IniciaSesion(string correo, string contrasena)
        {
            List<DbParameter> parametros = new List<DbParameter>();

            DbParameter param1 = dpf.CreateParameter();
            param1.Value = correo;
            param1.ParameterName = "correo";
            parametros.Add(param1);

            DbParameter param2 = dpf.CreateParameter();
            param2.Value = contrasena;
            param2.ParameterName = "contrasena";
            parametros.Add(param2);

            return ejecutaNonQuery("iniciasesion", parametros);
        }

        public Cliente devuelveCliente(string correo, string contrasena)
        {
            Cliente cliente = new Cliente();
            string storedprocedure = "iniciasesion";
            using (DbConnection con= dpf.CreateConnection())
            {
                con.ConnectionString = constr;
                using (DbCommand cmd = dpf.CreateCommand())
                {
                    cmd.Connection = con;
                    cmd.CommandText = storedprocedure;
                    cmd.CommandType = CommandType.StoredProcedure;
                    DbParameter paramCorreo = cmd.CreateParameter();
                    paramCorreo.DbType = DbType.String;
                    paramCorreo.ParameterName = "correo";
                    paramCorreo.Value = correo;

                    DbParameter paramContrasena = cmd.CreateParameter();
                    paramContrasena.DbType = DbType.String;
                    paramContrasena.ParameterName = "contrasena";
                    paramContrasena.Value = contrasena;

                    cmd.Parameters.Add(paramCorreo);
                    cmd.Parameters.Add(paramContrasena);

                    con.Open();

                    using (DbDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.Read())
                        {
                            cliente = new Cliente( (string)dr["dni"], (string)dr["nombres"] );
                        }
                    }
                }
            }
            return cliente;
        }

        public Cliente devuelveClienteporDni(string dni)
        {
            Cliente cliente = new Cliente();
            string storedprocedure = "datosclientepordni";
            using (DbConnection con = dpf.CreateConnection())
            {
                con.ConnectionString = constr;
                using (DbCommand cmd = dpf.CreateCommand())
                {
                    cmd.Connection = con;
                    cmd.CommandText = storedprocedure;
                    cmd.CommandType = CommandType.StoredProcedure;
                    DbParameter param = cmd.CreateParameter();
                    param.DbType = DbType.String;
                    param.ParameterName = "dni";
                    param.Value = dni;
                    cmd.Parameters.Add(param);
                    con.Open();
                    using (DbDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.Read())
                        {
                            cliente = new Cliente(
                                (string)dr["dni"],
                                (string)dr["nombres"],
                                (string)dr["apellidos"],
                                (string)dr["direccion"],
                                (string)dr["celular"]
                                );
                        }
                    }
                }
            }
            return cliente;
        }


    
    
    }
}