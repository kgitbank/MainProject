package sale.db;

import org.springframework.jdbc.core.JdbcTemplate;

public class SaleDAOImpl implements SaleDAO {
private JdbcTemplate jdbcTemplate;
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
}
