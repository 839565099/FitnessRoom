package entity;

import java.sql.SQLException;
import java.util.List;
import dbutil.SQL;


public class Card {
	//��ȡ����Ϣ�б�
	public List<Object> getData() throws SQLException{
		String sqlCmd="select * from v_Card";
		return SQL.executeQuery(sqlCmd, null);
	}
    
	//���ݲ�ѯ����
	public List<Object> getSearch(String sqlWhere) throws SQLException{
		String sqlCmd="select *from V_Card where "+sqlWhere+" ";
		return SQL.executeQuery(sqlCmd, null);
    }
    
    //ɾ����Ϣ
    public int delete(String card_id) throws SQLException{
        String sqlCmd="delete from card where card_id='"+card_id+"'";
        return SQL.executeNonQuery(sqlCmd, null);
    }
    
    //���ݱ�Ż�ȡ��Ϣ
    public List<Object> getEntityById(String card_id) throws SQLException{
        String sqlCmd="select *From V_Card where card_id='"+card_id+"'";
        return SQL.executeQuery(sqlCmd, null);
    }
    
    //���¿���Ϣ
    public int update(String card_id,String coach_id,String user_name,String user_gender,String user_addr,String card_phone) throws SQLException{
        String sqlCmd="Update Card set coach_id='" + coach_id + "',user_name='" + user_name + "',user_gender='" + user_gender + "',user_addr='" + user_addr + "',card_phone='" + card_phone + "' where card_id='"+card_id+"'";
        return SQL.executeNonQuery(sqlCmd, null);
    }
    
    //���뿨��Ϣ
    public int insertEntity(String card_id,String coach_id,String user_name,String user_gender,String user_addr,String card_phone) throws SQLException{
        String sqlCmd="Insert into Card values('" + card_id + "','" + coach_id + "','" + user_name + "','" + user_gender + "','" + user_addr + "','"+card_phone+"')";
        return SQL.executeNonQuery(sqlCmd, null);
    }
    
    //�����������Ƿ��ظ�
    public boolean check(String card_id){
        String sqlCmd="select count(*) from V_Card where card_id='"+card_id+"'";
        if(1==Integer.parseInt(SQL.excuteScalar(sqlCmd, null).toString()) )
        {
            return true;
        }
        return false;
    }

}
