package entity;

import java.sql.SQLException;
import java.util.List;

import dbutil.SQL;

/**
 * Userʵ��
 * @author ������~~~
 *2019��4��9��
 */
public class User {


	//��ȡ�û�����
	public List<Object> getData() throws SQLException{
		String sqlCmd="select * from User";
		return SQL.executeQuery(sqlCmd, null);
	}
        
            
    //����������ѯ
	public List<Object> getSearch(String sqlWhere) throws SQLException{
		String sqlCmd="select * from user where "+sqlWhere+" ";
		return SQL.executeQuery(sqlCmd, null);
    }
    
    //ɾ���û�����Ϣ
    public int delete(String user_id) throws SQLException{
        String sqlCmd="delete from User where user_id='"+user_id+"'";
        return SQL.executeNonQuery(sqlCmd, null);
    }
    
    //�����û����Ż�ȡ�û�����Ϣ
    public List<Object> getById(String user_id) throws SQLException{
        String sqlCmd="select * From user where user_id='"+user_id+"'";
        return SQL.executeQuery(sqlCmd, null);
    }
    
    //�����û�����Ϣ
    public int update(String user_id,String user_name,String real_name,String user_pwd,String user_phone) throws SQLException{
        String sqlCmd="Update User set user_name='" + user_name + "',real_name='" + real_name + "',user_pwd='" + user_pwd + "',user_phone='" + user_phone + "' where user_id='"+user_id+"'";
        return SQL.executeNonQuery(sqlCmd, null);
    }
    
    //������Ϣ
    public int insert(String user_id,String user_name,String real_name,String user_pwd,String user_phone) throws SQLException {
        String sqlCmd="Insert into User values('" + user_id + "','" + user_name + "','" + real_name + "','" + user_pwd + "','"+user_phone+"')";
        return SQL.executeNonQuery(sqlCmd, null);
    }
    
    //����˺��Ƿ��ظ�
    public boolean check(String user_id) throws NumberFormatException, SQLException{
        String sqlCmd="select count(*) from user where user_id='"+user_id+"'";
        if(1==Integer.parseInt(SQL.excuteScalar(sqlCmd, null).toString()) ){
            return true;
        }
        return false;
    }

	
	//�����������Ƿ�������ȷ
    public boolean checkPwd(String UserId,String pwd) throws NumberFormatException, SQLException{
        String sqlCmd="select count(*) from user where user_id='"+UserId+"' and user_pwd='"+pwd+"'";
        if(1==Integer.parseInt(SQL.excuteScalar(sqlCmd, null).toString()) ) {
            return true;
        }
        return false;
    }
    
    //�����������Ƿ�������ȷ�������룩
    public boolean updataPwd(String UserId,String pwd) throws SQLException{
        String sqlCmd="Update user set user_pwd='"+pwd+"'  where user_id='"+UserId+"'";
        if(SQL.executeNonQuery(sqlCmd, null)==1)
        {
        	return true;
        }
        return false;
    }
        

}
