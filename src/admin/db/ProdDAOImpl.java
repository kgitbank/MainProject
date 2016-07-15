package admin.db;

import org.springframework.jdbc.core.JdbcTemplate;

public class ProdDAOImpl implements ProdDAO {
private JdbcTemplate jdbcTemplate;
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
}
