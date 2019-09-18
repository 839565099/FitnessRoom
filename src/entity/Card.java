package entity;

import java.sql.SQLException;
import java.util.List;
import dbutil.SQL;


public class Card {
	//获取卡信息列表
	public List<Object> getData() throws SQLException{
		String sqlCmd="select * from v_Card";
		return SQL.executeQuery(sqlCmd, null);
	}
    
	//根据查询条件
	public List<Object> getSearch(String sqlWhere) throws SQLException{
		String sqlCmd="select *from V_Card where "+sqlWhere+" ";
		return SQL.executeQuery(sqlCmd, null);
    }
    
    //删除信息
    public int delete(String card_id) throws SQLException{
        String sqlCmd="delete from card where card_id='"+card_id+"'";
        return SQL.executeNonQuery(sqlCmd, null);
    }
    
    //根据编号获取信息
    public List<Object> getEntityById(String card_id) throws SQLException{
        String sqlCmd="select *From V_Card where card_id='"+card_id+"'";
        return SQL.executeQuery(sqlCmd, null);
    }
    
    //更新卡信息
    public int update(String card_id,String coach_id,String user_name,String user_gender,String user_addr,String card_phone) throws SQLException{
        String sqlCmd="Update Card set coach_id='" + coach_id + "',user_name='" + user_name + "',user_gender='" + user_gender + "',user_addr='" + user_addr + "',card_phone='" + card_phone + "' where card_id='"+card_id+"'";
        return SQL.executeNonQuery(sqlCmd, null);
    }
    
    //插入卡信息
    public int insertEntity(String card_id,String coach_id,String user_name,String user_gender,String user_addr,String card_phone) throws SQLException{
        String sqlCmd="Insert into Card values('" + card_id + "','" + coach_id + "','" + user_name + "','" + user_gender + "','" + user_addr + "','"+card_phone+"')";
        return SQL.executeNonQuery(sqlCmd, null);
    }
    
    //检查插入主键是否重复
    public boolean check(String card_id){
        String sqlCmd="select count(*) from V_Card where card_id='"+card_id+"'";
        if(1==Integer.parseInt(SQL.excuteScalar(sqlCmd, null).toString()) )
        {
            return true;
        }
        return false;
    }

}
