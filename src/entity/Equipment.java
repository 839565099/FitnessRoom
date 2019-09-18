package entity;

import java.sql.SQLException;
import java.util.List;
import dbutil.SQL;

public class Equipment {
	//获取信息列表
	public List<Object> getData() throws SQLException{
		String sqlCmd="select *from equipment";
		return SQL.executeQuery(sqlCmd, null);//执行查询操作executeQuery
	}
           
           //根据条件查询信息
	public List<Object> getSearch(String sqlWhere) throws SQLException{
	
		String sqlCmd="select *from equipment where "+sqlWhere+" ";
		return SQL.executeQuery(sqlCmd, null);//执行查询操作executeQuery
            }
            
            //删除信息
            public int delete(String equipment_id) throws SQLException{
                String sqlCmd="delete from equipment where equipment_id='"+equipment_id+"'";
                return SQL.executeNonQuery(sqlCmd, null);//执行非查询操作executeNonQuery
            }

            
            //插入信息
            public int insert(String equipment_name,String equipment_id,String equipment_num,String entry_date,String equipment_money) throws SQLException{
                String sqlCmd="Insert into equipment values('" + equipment_name + "','" + equipment_id + "','" + equipment_num + "','" + entry_date + "',"+equipment_money+")";
                return SQL.executeNonQuery(sqlCmd, null);
            }
            
            //检查插入主键是否重复
            public boolean checkExist(String equipment_id){
                String sqlCmd="select count(*) from equipment where equipment_id='"+equipment_id+"'";
                if(1==Integer.parseInt(SQL.excuteScalar(sqlCmd, null).toString()) ){
                    return true;
                }
                return false;
            }


        
}
