package org.example;

import org.example.models.Actor;
import org.example.models.Movie;

public class Main2 {
    public static void main(String[] args) {

        HibernateUtil.getSessionFactory().inTransaction(session -> {

            Movie m2 = session.get(Movie.class,2);
            Actor a2 = new Actor();
            a2.setName("Pepote");
            m2.addActor(a2);
            session.persist(a2);

        });
    }
}
