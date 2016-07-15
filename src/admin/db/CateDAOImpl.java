package admin.db;

import org.springframework.jdbc.core.JdbcTemplate;

public class CateDAOImpl implements CateDAO {
private JdbcTemplate jdbcTemplate;
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
}
