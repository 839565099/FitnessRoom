package dbutil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MysqlUtil {
	String dbUrl="jdbc:mysql://localhost:3306/fitnessroom?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
	String dbUserName="root";
	String dbPassword="123456";
	String jdbcname="com.mysql.cj.jdbc.Driver";
	

public Connection getCon() throws Exception {//连接数据库方法
	Class.forName(jdbcname);
	Connection con=DriverManager.getConnection(dbUrl,dbUserName,dbPassword);
	return con;
}	
	
	public void closeCon(Connection con) throws SQLException {//关闭数据库连接
		if (con!=null) {
			con.close();
		}
	}

	public static void main(String[] args) {
		MysqlUtil dbUtil=new MysqlUtil();
		try {
			dbUtil.getCon();
			System.out.println("数据库连接成功");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("数据库连接失败");
		}
}

}


