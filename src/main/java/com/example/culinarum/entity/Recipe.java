package com.example.culinarum.entity;

import lombok.*;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "recipe")
@ToString(of = "name")
@EqualsAndHashCode(of = "id")
public class Recipe {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;

    @Column(length = 2000)
    private String ingredients;
    @Column(length = 2000)
    private String recipe;
    private String type;
    private String cuisine;
    private String image;

    private Integer minutes;
    private Integer calories;
    private Boolean accepted;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "user_recipe",
            joinColumns = @JoinColumn(name = "recipe_id"),
            inverseJoinColumns = @JoinColumn(name = "user_id")
    )
    private Set<User> users = new HashSet<>();

}
