package creational.builder;

public class MovieBuilder implements PresentationBuilder{
    private final Movie movie = new Movie();

    @Override
    public void addSlide(Slide slide) {
        movie.addFrame(slide.getText(), 3);
    }

    public Movie getMovie() {
        return movie;
    }

    private class Movie {
        public void addFrame(String text, int duration){
            System.out.println("Adding frame to movie");
        }
    }
}
