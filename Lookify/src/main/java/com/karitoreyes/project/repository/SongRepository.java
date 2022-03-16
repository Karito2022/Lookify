package com.karitoreyes.project.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.karitoreyes.project.models.Song;

@Repository
public interface SongRepository extends CrudRepository<Song, Long> {
	List<Song> findAll();
	
	@Query(value="SELECT * FROM songs where artist like ?1", nativeQuery=true)
    List<Song> findArtistByName(String name);
	
	@Query(value="SELECT * FROM songs order by rating desc limit 10", nativeQuery=true)
    List<Song> findTop10Songs();
	
}