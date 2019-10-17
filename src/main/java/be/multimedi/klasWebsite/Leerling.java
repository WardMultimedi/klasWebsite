package be.multimedi.klasWebsite;

public class Leerling {
    private int id;

    private String voornaam;
    private String achternaam;

    private String description;

    private String homepage;
    private String linkedIn;
    private String image;
    private String email;

    public Leerling() {
    }

    public Leerling(int id, String voornaam, String achternaam, String description, String homepage, String linkedIn, String image, String email) {
        this.id = id;
        this.voornaam = voornaam;
        this.achternaam = achternaam;
        this.description = description;
        this.homepage = homepage;
        this.linkedIn = linkedIn;
        this.image = image;
        this.email = email;
    }

    public int getId() {
        return id;
    }

    public String getVoornaam() {
        return voornaam;
    }

    public void setVoornaam(String voornaam) {
        this.voornaam = voornaam;
    }

    public String getAchternaam() {
        return achternaam;
    }

    public void setAchternaam(String achternaam) {
        this.achternaam = achternaam;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getHomepage() {
        return homepage;
    }

    public void setHomepage(String homepage) {
        this.homepage = homepage;
    }

    public String getLinkedIn() {
        return linkedIn;
    }

    public void setLinkedIn(String linkedIn) {
        this.linkedIn = linkedIn;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
