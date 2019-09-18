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
  * SQL���ִ��
  * @author ������~~~
  *2019��4��9��
  */
public class SQL {
	static MysqlUtil util=new MysqlUtil();
	@SuppressWarnings("finally")
	//����ɾ��
	public static int executeNonQuery(String sqlCmd,Object[] objList) throws SQLException{
		Connection conn=null;	
		Statement sm=null;
		int result = 0;//���ؽ��
		try {
			conn=util.getCon();
			if(objList!=null){
				PreparedStatement pStatement=conn.prepareStatement(sqlCmd);
				for(int i=0;i<objList.length;i++){
					pStatement.setObject(i+1, objList[i]);//��ȡ���������ֵ
				}
				result=pStatement.executeUpdate();//ִ��SQL
			}
			else {
				conn=util.getCon();
				sm=conn.createStatement();//����Statement����
				result=sm.executeUpdate(sqlCmd);//ִ����Ӧsql
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
	 * ��ѯ���� ����list���ݼ���
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
				rSet=pStatement.executeQuery();//ִ�в�ѯ�������ResultSet
				ResultSetMetaData rsmdData=rSet.getMetaData();
				int column=rsmdData.getColumnCount();//��ȡ���صĵ������ݵ��ֶ���Ŀ
				while(rSet.next()){
					Object[] object=new Object[column];
					for(int i=1;i<=column;i++){
						object[i-1]=rSet.getObject(i);
					}
					list.add(object);//����ȡ��������ӵ�������
				}
			}
			else {
				conn=util.getCon();
				sm=conn.createStatement();//����Statement����
				rSet=sm.executeQuery(sqlCmd);//ִ�в�ѯ��ѯ����
			
				ResultSetMetaData rsmdData=rSet.getMetaData();
				int column=rsmdData.getColumnCount();//��ȡ�������������Ը���
				while(rSet.next()){
					Object[] object=new Object[column];
					for(int i=1;i<=column;i++){
						object[i-1]=rSet.getObject(i);
					}
					list.add(object);//����Ӧ������ӵ�������
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
	

	//�����������е�����
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
				// TODO �Զ����ɵ� catch ��
				e.printStackTrace();
			}
 try {
	util.closeCon(conn);
} catch (SQLException e) {
	// TODO �Զ����ɵ� catch ��
	e.printStackTrace();
}
			return obj;
		}
	}
}
