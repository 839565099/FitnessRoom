package dbutil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


 /**
  * SQL语句执行
  * @author 张翼麒~~~
  *2019年4月9日
  */
public class SQL {
	static MysqlUtil util=new MysqlUtil();
	@SuppressWarnings("finally")
	//插入删除
	public static int executeNonQuery(String sqlCmd,Object[] objList) throws SQLException{
		Connection conn=null;	
		Statement sm=null;
		int result = 0;//返回结果
		try {
			conn=util.getCon();
			if(objList!=null){
				PreparedStatement pStatement=conn.prepareStatement(sqlCmd);
				for(int i=0;i<objList.length;i++){
					pStatement.setObject(i+1, objList[i]);//获取传入参数的值
				}
				result=pStatement.executeUpdate();//执行SQL
			}
			else {
				conn=util.getCon();
				sm=conn.createStatement();//创建Statement对象
				result=sm.executeUpdate(sqlCmd);//执行相应sql
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			
			util.closeCon(conn);
			return result;
		}
	}
	
	@SuppressWarnings("finally")
	/**
	 * 查询操作 返回list数据集合
	 */
	public static List<Object> executeQuery(String sqlCmd,Object[] objList) throws SQLException{
		Connection conn=null;
		Statement sm=null;
		ResultSet rSet=null;
		List<Object> list=new ArrayList();
		try{
			conn=util.getCon();
			if(objList!=null)
			{
				PreparedStatement pStatement=conn.prepareStatement(sqlCmd);
				for(int i=0;i<objList.length;i++){
					pStatement.setObject(i+1, objList[i]);
				}
				rSet=pStatement.executeQuery();//执行查询命令，返回ResultSet
				ResultSetMetaData rsmdData=rSet.getMetaData();
				int column=rsmdData.getColumnCount();//获取返回的单条数据的字段数目
				while(rSet.next()){
					Object[] object=new Object[column];
					for(int i=1;i<=column;i++){
						object[i-1]=rSet.getObject(i);
					}
					list.add(object);//将获取的数据添加到集合中
				}
			}
			else {
				conn=util.getCon();
				sm=conn.createStatement();//创建Statement对象
				rSet=sm.executeQuery(sqlCmd);//执行查询查询命令
			
				ResultSetMetaData rsmdData=rSet.getMetaData();
				int column=rsmdData.getColumnCount();//获取单条数据中属性个数
				while(rSet.next()){
					Object[] object=new Object[column];
					for(int i=1;i<=column;i++){
						object[i-1]=rSet.getObject(i);
					}
					list.add(object);//将相应数据添加到集合中
				}
			}
		}
		catch(Exception e){
			e.printStackTrace();
			list=null;
		}
		finally{
		rSet.close();
		util.closeCon(conn);
			return list;
		}
	}
	

	//返回首行首列的数据
	@SuppressWarnings("finally")
	public static Object excuteScalar(String sqlCmd,Object[] objList){
		Connection conn=null;
		Statement sm=null;
		ResultSet rSet=null;
		Object obj=null;
		try {
			conn=util.getCon();
			if(objList!=null){
				PreparedStatement pStatement=conn.prepareStatement(sqlCmd);
				for(int i=0;i<objList.length;i++){
					pStatement.setObject(i+1, objList[i]);
				}
				rSet=pStatement.executeQuery();
				while(rSet.next()){
					obj=rSet.getObject(1);
			
					break;
				}
			}
			else {
				conn=util.getCon();
				sm=conn.createStatement();
				rSet=sm.executeQuery(sqlCmd);
				while(rSet.next()){
					obj=rSet.getObject(1);	
					break;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		finally{
			try {
				rSet.close();
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
 try {
	util.closeCon(conn);
} catch (SQLException e) {
	// TODO 自动生成的 catch 块
	e.printStackTrace();
}
			return obj;
		}
	}
}
