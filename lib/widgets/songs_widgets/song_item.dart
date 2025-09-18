import 'package:flutter/material.dart';
import 'package:myapp/data/favourites_manager.dart';

class SongItem extends StatefulWidget {
  final String title;
  final String? subtitle;
  final String imageUrl;
  final bool isForFavouritesView;

  const SongItem({
    super.key,
    required this.title,
    this.subtitle,
    required this.imageUrl,
    this.isForFavouritesView = false,
  });

  @override
  State<SongItem> createState() => _SongItemState();
}

class _SongItemState extends State<SongItem> {
  late bool isFavourite;

  @override
  void initState() {
    super.initState();
    isFavourite = FavouritesManager.isFavourite(widget.title, 'song');
  }

  void toggleFavourite() {
    setState(() {
      if (isFavourite) {
        FavouritesManager.removeFavourite(widget.title, 'song');
        isFavourite = false;
      } else {
        FavouritesManager.addFavourite(widget.title, widget.imageUrl, 'song');
        isFavourite = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isForFavouritesView) {
      // Favourites view (circular)
      return SizedBox(
        width: 100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(widget.imageUrl),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              widget.title,
              style: const TextStyle(color: Colors.white, fontSize: 14),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
    } else {
      // Songs screen view (list item)
      return Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {},
          child: Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFA2A2A2), width: 1),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Imagen
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                  child: Image.network(
                    widget.imageUrl,
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16),
                // Texto
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      if (widget.subtitle != null)
                        Text(
                          widget.subtitle!,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                          ),
                        ),
                    ],
                  ),
                ),
                // Corazón
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GestureDetector(
                    onTap: toggleFavourite,
                    child: Icon(
                      isFavourite ? Icons.favorite : Icons.favorite_border,
                      size: 28,
                      color: Colors.white,
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
}