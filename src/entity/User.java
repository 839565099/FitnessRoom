package entity;

import java.sql.SQLException;
import java.util.List;

import dbutil.SQL;

/**
 * User实体
 * @author 张翼麒~~~
 *2019年4月9日
 */
public class User {


	//获取用户数据
	public List<Object> getData() throws SQLException{
		String sqlCmd="select * from User";
		return SQL.executeQuery(sqlCmd, null);
	}
        
            
    //根据条件查询
	public List<Object> getSearch(String sqlWhere) throws SQLException{
		String sqlCmd="select * from user where "+sqlWhere+" ";
		return SQL.executeQuery(sqlCmd, null);
    }
    
    //删除用户表信息
    public int delete(String user_id) throws SQLException{
        String sqlCmd="delete from User where user_id='"+user_id+"'";
        return SQL.executeNonQuery(sqlCmd, null);
    }
    
    //根据用户表编号获取用户表信息
    public List<Object> getById(String user_id) throws SQLException{
        String sqlCmd="select * From user where user_id='"+user_id+"'";
        return SQL.executeQuery(sqlCmd, null);
    }
    
    //更新用户表信息
    public int update(String user_id,String user_name,String real_name,String user_pwd,String user_phone) throws SQLException{
        String sqlCmd="Update User set user_name='" + user_name + "',real_name='" + real_name + "',user_pwd='" + user_pwd + "',user_phone='" + user_phone + "' where user_id='"+user_id+"'";
        return SQL.executeNonQuery(sqlCmd, null);
    }
    
    //插入信息
    public int insert(String user_id,String user_name,String real_name,String user_pwd,String user_phone) throws SQLException {
        String sqlCmd="Insert into User values('" + user_id + "','" + user_name + "','" + real_name + "','" + user_pwd + "','"+user_phone+"')";
        return SQL.executeNonQuery(sqlCmd, null);
    }
    
    //检查账号是否重复
    public boolean check(String user_id) throws NumberFormatException, SQLException{
        String sqlCmd="select count(*) from user where user_id='"+user_id+"'";
        if(1==Integer.parseInt(SQL.excuteScalar(sqlCmd, null).toString()) ){
            return true;
        }
        return false;
    }

	
	//检查插入密码是否输入正确
    public boolean checkPwd(String UserId,String pwd) throws NumberFormatException, SQLException{
        String sqlCmd="select count(*) from user where user_id='"+UserId+"' and user_pwd='"+pwd+"'";
        if(1==Integer.parseInt(SQL.excuteScalar(sqlCmd, null).toString()) ) {
            return true;
        }
        return false;
    }
    
    //检查插入密码是否输入正确（改密码）
    public boolean updataPwd(String UserId,String pwd) throws SQLException{
        String sqlCmd="Update user set user_pwd='"+pwd+"'  where user_id='"+UserId+"'";
        if(SQL.executeNonQuery(sqlCmd, null)==1)
        {
        	return true;
        }
        return false;
    }
        

}
