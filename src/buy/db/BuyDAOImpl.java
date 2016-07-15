package buy.db;

import java.sql.Array;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;
import org.springframework.dao.DataRetrievalFailureException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

public class BuyDAOImpl implements BuyDAO {
private JdbcTemplate jdbcTemplate;
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	@Override
	public List buyList() {
		// TODO Auto-generated method stub
		String sql= "select * from m_order";
		return (List) jdbcTemplate.query(sql, new MyResultSetExtractor());
	}
	private class MyResultSetExtractor implements ResultSetExtractor{
		@Override
		public Object extractData(ResultSet arg0) throws SQLException, DataAccessException {
			// TODO Auto-generated method stub
			if(arg0.next()){
				BuyDTO dto = new BuyDTO();
				dto.setP_num(arg0.getInt("p_num"));
				dto.setM_name(arg0.getString("m_name"));
				Array tmp = arg0.getArray("p_code");
				Object obj= tmp.getArray();
				System.out.println("p_code:"+obj.toString());
				dto.setP_code(arg0.getArray("p_code"));
				dto.setP_amount(arg0.getArray("p_amount"));
				return dto;
		}
			throw new DataRetrievalFailureException("해당 객체를 찾을 수 없습니다.");
	}
}
}
