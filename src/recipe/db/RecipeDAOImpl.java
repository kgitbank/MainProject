package recipe.db;

import org.springframework.jdbc.core.JdbcTemplate;

public class RecipeDAOImpl implements RecipeDAO {
private JdbcTemplate jdbcTemplate;
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
}
