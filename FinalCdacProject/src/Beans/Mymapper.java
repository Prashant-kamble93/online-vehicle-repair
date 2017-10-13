package Beans;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;





public class Mymapper implements RowMapper<Register>
{

	@Override
	public Register mapRow(ResultSet rs, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		
		Register r1=new Register();
		r1.setName(rs.getString(1));
		r1.setPass(rs.getString(2));
		return null;
	}
	
}
