package entity;

import dbutil.SQL;
/**
 * 
 * @author ������~~~
 *2019��4��9��
 */
public class Check {

	//����û�������
	public boolean checkLogin(String user_id,String user_pwd) {
		String sql="select count(*) from user where user_id=? and user_pwd=?";
		Object[] obj=new Object[2];
		obj[0]=user_id;
		obj[1]=user_pwd;
		String result=SQL.excuteScalar(sql,obj).toString();
	
		if(result.equals("1")){
			return true;
		}
		else {
			return false;
		}
	}
	

	
	
}
