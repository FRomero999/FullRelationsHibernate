package org.example.models;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;

import java.util.ArrayList;
import java.util.List;

@Data
@Entity
public class Movie {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String title;

    @ManyToOne
    @JoinColumn(name="studio_id")
    private Studio studio;

    @ManyToMany(mappedBy = "movies")
    private List<Actor> actors = new ArrayList<>();

    public void addActor(Actor actor) {
        actor.getMovies().add(this);
        actors.add(actor);
    }

    @Override
    public String toString() {
        return "Movie{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", studio=" + studio.getName() +
                ", actors=" + actors +
                '}';
    }
}