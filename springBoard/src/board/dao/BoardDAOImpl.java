package board.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import board.dto.BoardDTO;

public class BoardDAOImpl implements BoardDAO {

	private JdbcTemplate jdbcTemplate;
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public List listBoard() {
		String sql = "select * from Springboard order by seq desc";
		RowMapper mapper = new RowMapper(){//익명클래스로 만들어 보자
			@Override
			public Object mapRow(ResultSet arg0, int arg1) throws SQLException {
				BoardDTO dto = new BoardDTO();
				dto.setContent(arg0.getString("content"));
				dto.setHitcount(arg0.getInt("hitcount"));
				dto.setPassword(arg0.getString("password"));
				dto.setRegdate(arg0.getString("regdate"));
				dto.setSeq(arg0.getInt("seq"));
				dto.setTitle(arg0.getString("title"));
				dto.setWriter(arg0.getString("writer"));
				
				return dto;
			}	
		};
		return jdbcTemplate.query(sql, mapper);
	}

}












