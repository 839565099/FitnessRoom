package entity;

import java.sql.SQLException;
import java.util.List;

import dbutil.SQL;

public class Coach {

	//获取教练员表信息列表
	public List<Object> getData() throws SQLException{
		String sqlCmd="select * from coach";
		return SQL.executeQuery(sqlCmd, null);
	}
	
	//获取空闲教练员
	public List<Object> getNoUseSeat() throws SQLException{
		String sqlCmd="SELECT * FROM coach WHERE coach_id NOT IN(SELECT coach_id FROM card)";
		return SQL.executeQuery(sqlCmd, null);
	}
        
            
    //根据条件查询
	public List<Object> getSearch(String sqlWhere) throws SQLException{
		String sqlCmd="select * from coach where "+sqlWhere;
		return SQL.executeQuery(sqlCmd, null);
    }
    
    //删除信息
    public int delete(String coach_id) throws SQLException{
        String sqlCmd="delete from coach where coach_id='"+coach_id+"'";
        return SQL.executeNonQuery(sqlCmd, null);
    }
    
    //根据编号获取信息
    public List<Object> getEntityById(String coach_id) throws SQLException{
        String sqlCmd="select * From coach where coach_id='"+coach_id+"'";
        return SQL.executeQuery(sqlCmd, null);
    }
    
    //更新信息
    public int update(String coach_id,String coach_num,String coach_jb,String coach_zt,String coach_phone) throws SQLException{
        String sqlCmd="Update coach set coach_num='" + coach_num + "',coach_jb='" + coach_jb + "',coach_zt='" + coach_zt + "',coach_phone='" + coach_phone + "' where coach_id='"+coach_id+"'";
        return SQL.executeNonQuery(sqlCmd, null);
    }
    
    //插入信息
    public int insert(String coach_id,String coach_num,String coach_jb,String coach_zt,String coach_phone) throws SQLException{
        String sqlCmd="Insert into coach values('" + coach_id + "','" + coach_num + "','" + coach_jb + "','" + coach_zt + "','"+coach_phone+"')";
        return SQL.executeNonQuery(sqlCmd, null);
    }
    
    //检查插入id是否重复
    public boolean checkExist(String coach_id){
        String sqlCmd="select count(*) from coach where coach_id='"+coach_id+"'";
        if(1==Integer.parseInt(SQL.excuteScalar(sqlCmd, null).toString()) )
        {
            return true;
        }
        return false;
    }
}
