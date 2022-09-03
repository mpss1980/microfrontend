import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:microfrontend/core/@shared/constants/api_constants.dart';
import 'package:microfrontend/features/domain/entities/movie_details_entity.dart';
import 'package:microfrontend/features/presentation/movies_catalog/pages/details_page.dart';

class CustomListCardComponent extends StatelessWidget {
  final MovieDetailsEntity movie;
  const CustomListCardComponent({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => DetailsPage(movie: movie),
              fullscreenDialog: true,
            ),
          );
        },
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                child: Hero(
                  tag: movie.id,
                  child: CachedNetworkImage(
                    imageUrl: ApiConstants.requestImg(movie.posterPath),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movie.title,
                        style: Theme.of(context).textTheme.headline6,
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                      const Spacer(),
                      Text('Popularidade: ${movie.popularity}'),
                      const SizedBox(height: 10),
                      Text('Votos: ${movie.voteAverage}'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
