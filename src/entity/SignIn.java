package entity;

import java.sql.SQLException;
import java.util.List;

import dbutil.SQL;


public class SignIn {
	
	public List<Object> getData() throws SQLException{
		String sqlCmd="select *from v_Fixed";
		return SQL.executeQuery(sqlCmd, null);//执行查询操作executeQuery
	}
	
	 
	public List<Object> getNo() throws SQLException{
		String sqlCmd="select * from V_Fixed where out_date is null;";
		return SQL.executeQuery(sqlCmd, null);//执行查询操作executeQuery
	}
            
    //查询
	public List<Object> getSearch(String sqlWhere) throws SQLException{
		String sqlCmd="select *from V_Fixed where "+sqlWhere+" ";
		return SQL.executeQuery(sqlCmd, null);//执行查询操作executeQuery
    }
    
   
    public int delete(String sign_id) throws SQLException{
        String sqlCmd="delete from sign where sign_id='"+sign_id+"'";
        return SQL.executeNonQuery(sqlCmd, null);//执行非查询操作executeNonQuery
    }

    public int setOut(String sign_id,String out_date ) throws SQLException{
    	String sqlCmd="update sign set out_date='"+out_date+"' where sign_id='"+sign_id+"'";
    	 return SQL.executeNonQuery(sqlCmd, null);
    }
    
   
    public int insert(String sign_id,String card_id,String entry_date,String out_date) throws SQLException{
        String sqlCmd="Insert into sign values('" + sign_id + "','" + card_id + "','" + entry_date + "'," + out_date + ")";
        return SQL.executeNonQuery(sqlCmd, null);
    }
    
   
    public boolean checkExist(String sign_id) {
        String sqlCmd="select count(*) from V_Fixed where sign_id='"+sign_id+"'";
        if(1==Integer.parseInt(SQL.excuteScalar(sqlCmd, null).toString()) )
        {
            return true;
        }
        return false;
    }


}
