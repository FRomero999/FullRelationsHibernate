package org.example;

import org.example.models.Actor;
import org.example.models.Movie;
import org.example.models.Studio;

public class Main {
    public static void main(String[] args) {

        HibernateUtil.getSessionFactory().inSession((session -> {
            session.createQuery("From Studio", Studio.class).list().forEach(System.out::println);

            System.out.println("-----------------");
            Movie m = session.get(Movie.class,1);
            m.getActors().forEach(System.out::println);


            System.out.println("-----------------");
            Actor a = session.get(Actor.class,10);
            a.getMovies().forEach(System.out::println);

            System.out.println("-----------------");

        }));

    }
}