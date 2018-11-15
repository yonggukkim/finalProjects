package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.City;
import model.Continent;
import model.Country;

@Repository
public class CartegoryRepository extends AbstractRepository{
	private final String namespace = "repository.mapper.CartegoryMapper";
	public List<Continent> continentSelect() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace + ".cotinentSelect";
		try {
			return sqlSession.selectList(statement);
		}finally {
			sqlSession.close();
		}
	}
	public List<Country> countrySelect(Continent continent) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace + ".countrySelect";
		System.out.println("Repository2 "+continent.getContinentName());
		try {
			return sqlSession.selectList(statement, continent);
		}finally {
			sqlSession.close();
		}
	}
	public List<City> citySelect(Country country) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace + ".citySelect";
		System.out.println("Repository3 "+country.getCountryNum());
		System.out.println("Repository3 "+country.getCountryName());
		try {
			return sqlSession.selectList(statement, country);
		}finally {
			sqlSession.close();
		}
	}
}
