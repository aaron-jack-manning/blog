#![allow(unused_imports)]

mod mathil;
use mathil::{colours::*, utilities::*, constants::*, rendering::*, maths_objects::*, colours::css_colours, animation::*};

fn main() {

    fn complex_cube(point : Point) -> Point {
        Point::new(
            point.x.powi(3) - 3.0 * point.x * point.y.powi(2),
            3.0 * point.x.powi(2) * point.y - point.y.powi(3)
        )
    }

    let mut vectors = Vec::new();

    let mut max_length = 0.0;
    
    for i in -7..=7 {
        for j in -3..=3 {

            if i != 0 || j != 0 {
                let tail = Point::new(i as f32, j as f32);

                let delta =
                    complex_cube(tail);

                max_length = if delta.distance() > max_length { delta.distance() } else { max_length };

                vectors.push(
                    Vector::new(
                        Point::add(tail, Point::multiply_scalar(delta, 0.5 * 1.0 / delta.distance())),
                        tail,
                        0.2,
                        0.2
                    )
                );
            }
        }
    }

    let mut vector_render_settings = Vec::new();

    for i in -7..=7 {
        for j in -3..=3 {

            if i != 0 || j != 0 {

                let current_length = complex_cube(Point::new(i as f32, j as f32)).distance();

                vector_render_settings.push(
                    VectorRenderSettings::new(
                        rainbow((1.0 - current_length / max_length) * 0.8),
                        Thickness::Relative(0.05),
                        300,
                        RenderingType::RoundAntiAliased(2.0)
                    )
                );
            }
        }
    }

    let mut screen = 
        Screen::new(
            3840, 2160,
            Point::new(-8.0, -4.5), Point::new(8.0, 4.5),
            Colour::from_hex("#2f3640")
        )
        .render(
            CartesianPlane::new(
                Point::new(-6.0, -3.0), Point::new(6.0, 3.0), Point::new(0.0, 0.0),
                0.2, 0.2
            ),
            CartesianPlaneRenderSettings::new(
                Colour::from_rgb(240, 240, 240),
                Thickness::Relative(0.05),
                400
            )
        );

    for _i in 0..vectors.len() {
        let current_vector = vectors.pop().unwrap();
        let current_vector_render_settings = vector_render_settings.pop().unwrap();

        screen = 
            screen.render(
                current_vector,
                current_vector_render_settings
            );
    }

    screen.write_to_png("", "complex-cubic-vector-field");
    
}