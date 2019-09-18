package entity;

import java.sql.SQLException;
import java.util.List;

import dbutil.SQL;

public class Coach {

	//��ȡ����Ա����Ϣ�б�
	public List<Object> getData() throws SQLException{
		String sqlCmd="select * from coach";
		return SQL.executeQuery(sqlCmd, null);
	}
	
	//��ȡ���н���Ա
	public List<Object> getNoUseSeat() throws SQLException{
		String sqlCmd="SELECT * FROM coach WHERE coach_id NOT IN(SELECT coach_id FROM card)";
		return SQL.executeQuery(sqlCmd, null);
	}
        
            
    //����������ѯ
	public List<Object> getSearch(String sqlWhere) throws SQLException{
		String sqlCmd="select * from coach where "+sqlWhere;
		return SQL.executeQuery(sqlCmd, null);
    }
    
    //ɾ����Ϣ
    public int delete(String coach_id) throws SQLException{
        String sqlCmd="delete from coach where coach_id='"+coach_id+"'";
        return SQL.executeNonQuery(sqlCmd, null);
    }
    
    //���ݱ�Ż�ȡ��Ϣ
    public List<Object> getEntityById(String coach_id) throws SQLException{
        String sqlCmd="select * From coach where coach_id='"+coach_id+"'";
        return SQL.executeQuery(sqlCmd, null);
    }
    
    //������Ϣ
    public int update(String coach_id,String coach_num,String coach_jb,String coach_zt,String coach_phone) throws SQLException{
        String sqlCmd="Update coach set coach_num='" + coach_num + "',coach_jb='" + coach_jb + "',coach_zt='" + coach_zt + "',coach_phone='" + coach_phone + "' where coach_id='"+coach_id+"'";
        return SQL.executeNonQuery(sqlCmd, null);
    }
    
    //������Ϣ
    public int insert(String coach_id,String coach_num,String coach_jb,String coach_zt,String coach_phone) throws SQLException{
        String sqlCmd="Insert into coach values('" + coach_id + "','" + coach_num + "','" + coach_jb + "','" + coach_zt + "','"+coach_phone+"')";
        return SQL.executeNonQuery(sqlCmd, null);
    }
    
    //������id�Ƿ��ظ�
    public boolean checkExist(String coach_id){
        String sqlCmd="select count(*) from coach where coach_id='"+coach_id+"'";
        if(1==Integer.parseInt(SQL.excuteScalar(sqlCmd, null).toString()) )
        {
            return true;
        }
        return false;
    }
}
