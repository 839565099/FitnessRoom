package entity;

import java.sql.SQLException;
import java.util.List;
import dbutil.SQL;

public class Equipment {
	//��ȡ��Ϣ�б�
	public List<Object> getData() throws SQLException{
		String sqlCmd="select *from equipment";
		return SQL.executeQuery(sqlCmd, null);//ִ�в�ѯ����executeQuery
	}
           
           //����������ѯ��Ϣ
	public List<Object> getSearch(String sqlWhere) throws SQLException{
	
		String sqlCmd="select *from equipment where "+sqlWhere+" ";
		return SQL.executeQuery(sqlCmd, null);//ִ�в�ѯ����executeQuery
            }
            
            //ɾ����Ϣ
            public int delete(String equipment_id) throws SQLException{
                String sqlCmd="delete from equipment where equipment_id='"+equipment_id+"'";
                return SQL.executeNonQuery(sqlCmd, null);//ִ�зǲ�ѯ����executeNonQuery
            }

            
            //������Ϣ
            public int insert(String equipment_name,String equipment_id,String equipment_num,String entry_date,String equipment_money) throws SQLException{
                String sqlCmd="Insert into equipment values('" + equipment_name + "','" + equipment_id + "','" + equipment_num + "','" + entry_date + "',"+equipment_money+")";
                return SQL.executeNonQuery(sqlCmd, null);
            }
            
            //�����������Ƿ��ظ�
            public boolean checkExist(String equipment_id){
                String sqlCmd="select count(*) from equipment where equipment_id='"+equipment_id+"'";
                if(1==Integer.parseInt(SQL.excuteScalar(sqlCmd, null).toString()) ){
                    return true;
                }
                return false;
            }


        
}
