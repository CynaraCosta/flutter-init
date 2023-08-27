import 'package:flutter/material.dart';
import 'package:rick_and_morty/character/data/service/character_response.dart';
import 'package:rick_and_morty/character/presentation/widgets/circle_widget.dart';


class CharacterCardWidget extends StatelessWidget {
  const CharacterCardWidget({super.key, required this.response, this.onTap});

  final CharacterResponse response;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      clipBehavior: Clip.antiAlias,
      elevation: theme.cardTheme.elevation ?? 0,
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 200,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(response.image),
              Expanded(
                // expanded é tipo o hugging
                child: Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        response.name,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style:  theme.textTheme.titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        children: [
                          CircleWidget(status: response.status.toLowerCase()),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: Text(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                '${response.status} - ${response.species}',
                                style: theme.textTheme.titleMedium,
                                ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 32.0
                      ),
                      Text(
                        'Identifier',
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize: 13
                          ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        response.id.toString(), 
                        style: theme.textTheme.titleMedium
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
