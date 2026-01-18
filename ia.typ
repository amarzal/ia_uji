#import "macros.typ": appendix, plan, plantilla
#show: plantilla

#set title(
    "Proyecto de definición de una estrategia de despliegue de la IA en los ámbitos de gestión y desarrollo de la UJI",
)
#align(center, title())

#outline()

#pagebreak()

= Introducción <sec:intro>

La Inteligencia Artificial (IA) y, en particular, la IA Generativa (IAG) va a transformar la gestión administrativa, reduciendo tareas repetitivas y aumentando la eficiencia en una integración entre tecnología y talento humano.

En el desarrollo de _software_ el cambio está siendo especialmente disruptivo, como ilustra este tweet de Andrej Karpathy (26/12/2026)#footnote[
    *Igor Babushkin* `@ibab` 26 de diciembre (de 2025): Opus 4.5 es muy bueno.

    *Andrej Karpathy* `@karpathy` 26 de diciembre (de 2025): Es muy bueno. La gente que no se ha mantenido informada incluso en los últimos 30 días ya tiene una visión obsoleta sobre este asunto.]:

#align(center, image(
    "assets/media/image2.png",
    width: 5in,
    alt: "Igor Babushkin: Opus 4.5 es muy bueno. – Andrew Karpathy: Es muy bueno. La gente que no se ha mantenido informada incluso en los últimos 30 días ya tiene una visión obsoleta sobre este asunto.",
))

El cambio es tan rápido que genera resistencia incluso entre profesionales que ya usan IA, unida al temor de que sus habilidades pierdan valor. El desarrollo de _software_ es el campo paradigmático de este cambio acelerado y la reacción. Es el campo donde los efectos están siendo más evidentes y dónde es más patente el cuestionamiento del conjunto de habilidades que hasta ahora han definido a los profesionales de un sector#footnote[
    *Andrey Petrov* `@shazow` 27 de diciembre (de 2025): ¿Crees que estas habilidades son sustanciales y transferibles al futuro? ¿Tiene alguien que empezó hace 1-2 años una ventaja sobre alguien que empezó hace un mes? ¿Serán útiles las lecciones de hoy dentro de 1-2 años? Siento que el factor de \"perderse algo\" sigue siendo bastante bajo.

    *Andrej Karpathy* `@karpathy` 27 de diciembre (de 2025): Muy buenas preguntas, en mi opinión, los desarrolladores experimentados tienen una ventaja real pero solo si progresan rápidamente a través de su ciclo de duelo y se adaptan, ahora y en adelante. Rechazar categóricamente o ignorar la nueva capa sería un error.
]:

#align(center, image(
    "assets/media/image1.png",
    width: 5in,
    alt: "Andrey Petrov: Do you feel these skills are substantial and transferrable to the future? Does someone who started 1-2 years ago have an advantage over someone who started a month ago? Will lessons today be useful 1-2 years ago? I feel like the \"missing out\" factor is still quite low. — Andrej Karpathy: Very good questions imo experienced devs have a real advantage but only if they rapidly progress through their grief cycle and adapt, now and onwards. Categorically rejecting or ignoring the new layer would be a mistake.",
))

La IA ha pasado de autocompletador inteligente a agente capaz de desarrollar aplicaciones completas. Claude Code marcó esta transición, seguido por OpenAI (Codex CLI) y Google (Gemini CLI). Estas herramientas han revolucionado la ingeniería del software pero, sobre todo, han hecho realidad la aplicación de de agentes a tareas concretas (programación) y más generales. Es previsible que se extienda su uso a puestos de administración y gestión mediante:
- agentes especializados con extensiones GUI (MCP, conectores a servicios),
- modos que permiten acceso al sistema de ficheros y navegador (como Cowork de Anthropic).

Aunque presentan distinto grado de madurez según el campo de aplicación, los agentes van a transformar la forma en que se trabaja en muchos ámbitos profesionales en un plazo mucho más breve del que se podía anticipar hace solo unos meses. El desarrollo de software lleva la delantera porque forma parte del flujo de trabajo de quienes están creando las IA, pero estos avances se transferirán al resto de dominios en un plazo no muy largo.

Enfrentamos una situación cambiante, que requiere una adaptación continua que dificulta la planificación estratégica, pero la peor estrategia es no hacer nada y no apostar siquiera por esa adaptación continua.

En este documento no abordamos el impacto de la IAG en la docencia e investigación del profesorado y nos centramos en la gestión universitaria. El documento se estructura en varios bloques. En un primer bloque se efectúa un análisis de las herramientas y las necesidades:

- Herramientas disponibles e infraestructura necesaria para su despliegue y contratación de los modelos y servicios relacionados.

- Clasificación del público en diferentes perfiles y objetivos de carácter estratégico, dividiendo entre la capa de usuarios y la de desarrolladores.

- Análisis de estado de algunos perfiles, objetivos a conseguir en el corto y medio plazo y acciones orientadas a su consecución.

En un segundo bloque se recogen los principales objetivos y acciones a realizar a corto, medio y largo plazo.


= Análisis de herramientas y necesidades <sec:herramientas-necesidades>

== Modelos y ecosistemas
La evolución de los modelos grandes de lenguaje (LLM, por el inglés _Large Language Models_) que constituyen el estado del arte (SOTA, por el inglés _State of the Art_) es muy rápida. La validez de este análisis probablemente sea baja o nula en un plazo de tiempo corto si ponemos el foco en los modelos existentes y sus posibilidades. Es un análisis en el que
- no importa tanto quién ostenta posiciones dominantes hoy como el hecho de que hay diferencias notables entre los LLM que encabezan los _rankings_ y el resto,
- los precios se estructuran de modos similares en los modelos comerciales, con precios similares en las suscripciones y mayor variabilidad en el pago por uso.

A 14 de enero de 2025, hay cuatro grandes creadores de modelos privativos SOTA y, para cada uno de ellos, un modelo que destaca por sus prestaciones:

#figure(
    align(center, {
        set text(size: .9em)
        table(
            columns: (auto, auto, auto),
            align: (left, left, left),
            stroke: none,
            table.header(
                table.hline(),
                [*Empresa*],
                [*Familia de modelos*],
                [*Modelo SOTA*],
                table.hline(),
            ),
            [OpenAI],
            [GPT],
            [GPT 5.2],
            [Anthropic],
            [Claude],
            [Opus  4.5],
            [Google],
            [Gemini],
            [Gemini 3.0 Pro],
            [xAI],
            [Grok],
            [Grok 4.1],
            table.hline(),
        )
    }),
    kind: table,
    caption: [Principales productores de modelos y sus modelos más potentes.],
)

Esta tabla resumen, no exhaustiva, da una idea del escenario en los modelos abiertos:

#figure(
    align(
        center,
        {
            set text(size: .9em)
            table(
                columns: (auto, auto, auto),
                align: (left, left, left),
                stroke: none,
                table.header(
                    table.hline(),
                    [*Empresa*], [*Familia de modelos*], [*Modelo frontera*],
                    table.hline(),
                ),
                [DeepSeek], [DeepSeek], [DeepSeek V3.2],
                [Mistral], [Mistral/Devstral], [Mistral Large 3/Devstral 2],
                [Alibaba], [Qwen], [Qwen3-235B-A22B],
                [Baidu], [Ernie], [Ernie 4.5-VL-Thinking],
                [Moonshot], [Kimi], [Kimi K2 Thinking],
                [Z.ai], [GLM], [GLM 4.7],
                [Meta], [Llama], [Llama 4],
                table.hline(),
            )
        },
    ),
    kind: table,
    caption: [Principales productores de modelos abiertos y sus modelos más avanzados.],
)

Los creadores de modelos privados también liberan modelos (GPT OSS de OpenAI, Gemma de Google...) con buenas prestaciones.#footnote[El modelo GPT OSS 120b de OpenAI es abierto, ofrece prestaciones similares a OpenAI o4 mini y puede ser ejecutado de forma eficiente mediante un equipo con 80 GB GPU.]

En esta tabla se resume el _ranking_ a fecha 8/1/2026 según LMArena, un _benchmark_ basado en apreciaciones subjetivas de usuarios:

#figure(
    align(
        center,
        {
            set text(size: .9em)
            table(
                columns: (auto, auto, auto, auto),
                align: (left, left, left, left, right),
                stroke: none,
                table.header(
                    table.hline(),
                    [*Modalidad*], [*Mejor modelo*], [*Mejor modelo abierto*], [*Posición _ranking_*],
                    table.hline(),
                ),
                [Texto], [Gemini 3 Pro], [GLM 4.7], [19],
                [WebDev], [Claude Opus 4.5], [Minimax-M2.1-preview], [6],
                [Visión], [Gemini 3 Pro], [Qwen VL 235B A22B Instruct], [14],
                [Texto a imagen], [GPT Image 1.5], [Hunyuan Image 3.0], [8],
                [Edición de imagen], [ChatGPT Image Latest], [Qwen Image Edit 2511], [9],
                [Búsqueda], [Gemini 3 Pro Grounding], [Diffbot Small XL], [14],
                [Texto a video], [Vei 3.1 fast audio], [Kandinsky 4.0 t2v Pro], [15],
                [Imagen a video], [Veo 3.1 audio], [Wan v2.2 a14b], [22],
                table.hline(),
            )
        },
    ),
    kind: table,
    caption: [Mejores modelos cerrados y abiertos por modalidad, según LLMArena, con indicación de la posición que ocupa el mejor modelo abierto en cada modalidad.],
)

Los modelos abiertos se descargan de #link("http://huggingface.co")[`http://huggingface.co`] y, en principio, pueden ejecutarse con infraestructura propia. No obstante, los elevados requerimientos computacionales de los modelos abiertos de mayores prestaciones y la necesidad de contar con personal formado en su despliegue y explotación hacen que la mejor opción sea contratarlos como SaaS (#link("http://huggingface.co")[HuggingFace], #link("https://openrouter.ai/")[OpenRouter], #link("https://azure.microsoft.com/en-us/solutions/ai")[Microsoft Azure]...).

Del exanen de la tabla se puede extraer la conclusión de que la posición de liderazgo siempre la ocupa un modelo privativo. No obstante,
+ los _ranking_ son muy dinámicos y esta situación puede cambiar,
+ el _ranking_ no es más que un posicionamiento relativo y las familias de modelos que hoy están detrás puede ofrecer, en pocos meses, prestaciones similares a los que ocupan ahora la primera posición.

Aunque se puede dar el vuelco que señalamos en el primer punto, no se ha observado en los últimos meses. Por otra parte, cuando un modelo haya evolucionado hasta ser comparable con los modelos frontera actuales,  también lo habrán hecho estos, por lo que cabe esperar que se mantenga una diferencia notable entre los modelos SOTA privativos y los abiertos.

La diferencia entre usar uno de los mejores modelos y los que van unos meses por detrás determina su efectividad como agente y es probable que esa ventaja se mantenga en el futuro. Al menos en una fase inicial, en la que la fiabilidad resulta crítica para una adopción generalizada por parte de los usuarios, la elección de modelos privativos y de altas prestaciones parece clara.

Hoy por hoy, los modelos de elección son Gemini 3.0 Pro de Google, Claude Opus 4.5 de Anthropic y ChatGPT 5.2 de OpenAI Pero no solo ha de preocupar el acceso a los modelos, sino también el ecosistema de herramientas e integraciones que facilita cada proveedor.

Por ejemplo, la UJI ha suscrito recientemente un contrato con Google Cloud que permite  utilizar servicios tecnológicos para el despliegue de agentes (Vertex AI Studio). La contratación con Google da acceso a herramientas que otros proveedores no ofrecen, como NotebookLM. Del mismo modo hay herramientas que ofrece Anthropic y no Google u OpenAI, como Claude Cowork.

No solo han de tener en cuenta las herramientas que complementan a los modelos extendiendo su funcionalidad, sino también de la integración con el ecosistema de aplicaciones de productividad (Google Workspace for Education, Microsoft 365...).

Teniendo en cuenta la potencia de los modelos de Google y la utilización de su ecosistema para la gestión en la UJI mediante _Google Workspace for Education_, se debería realizar un proyecto piloto de despliegue de un agente informador mediante Vertex para analizar la viabilidad de su utilización en futuros despliegues.

== Desarrollos propios

El despliegue de agentes propios que utilicen IAG requiere de infraestructura tecnológica específica.

Se debe analizar y definir esta infraestructura y las políticas cuando se vaya a efectuar desarrollos propios:
- herramientas de orquestación,
- base de datos vectorial que se utilizará para sistemas de recuperación aumentada por IA (RAG, por el inglés _Retrieval Augmented Generation_),
- ingesta de datos y estrategia de recuperación,
- despliegue de las soluciones,
- modelos que se utilizarán para cada uso,
- análisis de costes y balance coste/rendimiento de los modelos,
- pila de desarrollo,
- capa de integración y conectividad...

Tras las pruebas del proyecto piloto del chatbot RAG para información de normativa administrativa se descartó la puesta en operación porque los resultados no eran adecuados. Habría que analizar las causas y en qué medida estas insuficiencias resultan imputables al modelo utilizado (han avanzado mucho desde esa prueba piloto) o a otra infraestructura tecnológica, porque la necesidad de desplegar agentes que permitan un mejor acceso a la información institucional por parte de los usuarios sigue estando vigente y constituye un campo de aplicación en el que la IAG ha demostrado su eficacia.

== Acceso a la información institucional

El acceso a la información institucional con la que se va a trabajar es crucial.

La información se ha de clasificar por el nivel de exposición permitida a los modelos IA cuando estos se contratan en modalidad de suscripción o _pago por uso_, porque en estos casos la información se envía a los servidores del proveedor del modelo y puede quedar almacenada en ellos, con los riesgos que esto supone en función del tipo de información.

El hecho de que cierta información no pueda suministrarse directamente a los modelos no es un factor limitador importante:
- la IA sigue siendo útil generando herramientas deterministas (aplicaciones) que procesan la información en local,
- los modelos pueden trabajar con información anonimizada o agregada.

En cualquier caso, la información exponible ha de estar disponible en fuentes gestionadas por la Universidad.
- Con la granuralidad necesaria en los permisos de acceso de los usuarios que operan la IA.
- Con los niveles de protección de la información frente al uso directo por los modelos bien definidos: información pública, información interna no confidencial, información sensible, información de carácter personal especialmente protegida... Se ha de establecer qué información solo puede procesarse en local (aunque la herramientas de procesamiento hayan sido construidas con/por modelos) y qué información puede ser consumida por modelos en la nube.
- Con la estructura y formato adecuados para su ingesta por los modelos: texto plano, JSON, CSV, PDF, Markdown, etcétera.
- Con la documentación necesaria para facilitar su comprensión por los modelos: esquemas de datos, diccionarios de datos, glosarios, descripciones textuales en ficheros de acompañamiento...

Existe un grupo de trabajo para la mejora de la fiabilidad y el acceso a la información. Es necesario que se efectúe un despliegue de las acciones planificadas en el grupo. Se recoge una síntesis de las que afectan al despliegue de la inteligencia artificial, en el apartado de objetivos y acciones.




== Las necesidades de los usuarios <sec:necesidades>

Cualquier despliegue de servicios tecnológicos debe efectuarse desde la perspectiva de los usuarios y sus necesidades. En este caso es especialmente relevante porque la utilización de IA implica un cambio de paradigma radical, lo que puede entrañar la necesidad de un reaprendizaje sobre cómo se interactúa con las herramientas de gestión.

Por usuarios debemos entender a cualquier persona que se relaciona con la universidad. Pueden ser terceros que demanden información de los servicios o que se relacionen con la universidad en relaciones comerciales aunque la comunidad universitaria integrada por estudiantes, PTGAS, PDI y PI, que están recogidos en los otros grupos que se identifican a continuación.

La atención a las necesidades y la experiencia del usuario resulta imprescindible. El despliegue de la IA no debe preocuparse, exclusivamente, en la capacidad de procesamiento, sino que debe priorizar la confiabilidad y la adopción no disruptiva. Algún proyecto piloto desarrollado ha permitido constatar que es necesario que que las soluciones que se desplieguen integren:

- Fase de *detección de necesidades*. Por evidentes limitaciones de recursos no se pueden abordar todos los proyectos al mismo tiempo y es necesario priorizar. La ordenación de los proyectos debe tener en cuenta las necesidades de los usuarios finales.

    Si se pregunta a cada usuario a título individual, cada uno de ellos puede tener la percepción de que sus necesidades son las más relevantes, pero el análisis debería tener también en cuenta el número global de usuarios a los que se da respuesta con cada proyecto. Por otra parte, muchos usuarios no saben qué esperar de la tecnología y eso condiciona la expresión de esa necesidades

    Es necesario definir una metodología y unos responsables para esta identificación de las necesidades. En esta fase de detección de las necesidades deberían participar representantes significativos de los colectivos de usuarios, con la supervisión de personas que conozcan la potencialidad y limitaciones de las nuevas herramientas.

- *Transparencia activa*: Los sistemas que se desplieguen deben proporcionar referencias explícitas a las fuentes de datos institucionales, permitiendo al usuario validar la información en todo momento.

    El factor no determinista del comportamiento de los modelos y la probabilidad de que fabrique datos obliga a que la información proveniente de la base de datos sea fácilmente contrastable y validable efectivamente, tanto en su origen como en los cambios que se propongan.

- *Interfaz de baja fricción*: El uso de modelos multimodales permite una interacción por diferentes medios en la entrada (capturas de pantalla, techado, audio...), facilitando una interacción más natural y accesible.

    El usuario está acostumbrado a la interacción con aplicaciones web y, en el caso de algunos puestos de trabajo, con Forms de Oracle. El salto del modelo convencional al que posibilitan los modelos multimodales no es trivial y requiere poner la usabilidad en el foco de los desarrollos.

    La integración de IA ha de cuidar la experiencia de usuario, evitando interfaces complejos y favoreciendo la integración en los flujos de trabajo habituales, de modo que la adopción de las nuevas herramientas no suponga una barrera adicional por la dificultad de aprender un nuevo entorno.

- La importancia de *la retroalimentación y validación*. Es necesario formar adecuadamente a los usuarios para que entiendan que los agentes son asistentes que les ayudan en el trabajo y multiplican su productividad, pero no les sustituyen.

    Se deben introducir capas de retroalimentación donde los usuarios puedan interactuar  con el agente, refinar su comportamiento y validar que la información que están manejando o procesando es correcta.

    Si la responsabilidad sobre el resultado de cada proceso es del usuario, este debe disponer de herramientas que le permitan validar el trabajo realizado por el agente con seguridad y facilidad.

- Compartición de *configuraciones*. Los modelos se adaptan a las especificades de cada función o servicio a través de diferentes _prompts_ que se pueden almacenar en ficheros de texto. Estos ficheros deben ser fácilmente compartibles por los usuarios de un mismo servicio, de modo que se homogeneice el comportamiento del modelo y se evite la repetición de esfuerzos.

    Hay muchas lecciones aprendidas en la ingeniería de software que ahora deben extenderse a colectivos más amplios:  acceso a repositorios con control de versiones, por ejemplo, o a la prueba sistemática de los desarrollos con baterías de test.

== Tipologías de usuarios

Los usuarios se pueden dividir en función del colectivo al que pertenecen:
- público externo (terceros que demandan información o servicios a la universidad),
- estudiantes de grado y máster,
- doctorandos y personal en formación,
- personal docente e investigador (PDI y PI),
- personal de administración y servicios (PTGAS),
- cuadros directivos.

También se puede en función del perfil profesional y del tipo de tareas que realizan. Estas pueden singulares de la unidad a la que pertenecen. Hay unidades singulares, con un papel definido en la universidad y que provee servicios no administrativos, que suelen corresponderse:
- con el desempeño de una profesión u oficio (traducción y revisión lingüística, producción audiovisual, comunicación...),
- con especialidades de la actividad universitaria (aseguramiento de la calidad, gestión de estudios...),
- con tareas propias de la organización (de recursos humanos, planificación estratégica, aseguramiento de la calidad, control interno, igualdad...),
- con el mantenimiento y desarrollo de infraestructuras (tecnológicas, de instalaciones y edificios...),
- con la organización y ejecución de actividades de extensión universitaria (actividades deportivas, culturales, etcétera),
- con la atención al público (orientación profesional, información general),
- ...

Todas estas divisiones son relevantes a la hora de considerar el papel que la IA jugará en su relación con la universidad o en el desempeño de sus funciones, y para cada uno de ellos se puede hacer un análisis específico.

Ahora estamos interesados, sin embargo, en una agrupación de puestos por la potencialidad que el uso de la IA tiene en la mejora de la eficiencia y eficacia en la realización de sus tareas, así como por la expectativa de adopción de estas tecnologías.

Por sus distintas necesidades vamos a diferenciar entre varios grupos, dentro de los cuales haremos las divisiones que estimemos pertinentes.

=== Grupo 1: Puestos de trabajo con funciones no administrativas <sec:grupo-específico>

Dentro del PTGAS hay perfiles específicos, que no están relacionados con la administración o solo lo están tangencialmente y que se corresponden con el ejercicio de profesiones y oficios. Son de interés, por las especiales necesidades que pueden tener en cuanto a sus herramientas de gestión, algunos de estos perfiles como:

- Traductores y revisores de textos (SLT).
- Diseñadores gráficos (SCP).
- Editores de vídeo (SCP).
- Periodistas (SCP).
- Gestores de redes sociales (SCP).
- Arquitectos e ingenieros (OTOP).
- Informadores y primera línea de atención (Infocampus, CAU).
- Orientadores profesionales (OIPEP).
- Otros.

En relación con las necesidades particulares de estos perfiles, existen herramientas de nicho orientadas a resolver problemas muy específicos de cada actividad que pueden resultar útiles y adecuadas. Muchas de las herramientas tradicionales están sufriendo procesos de transformación mediante la integración de IA generativa.

La traducción y revisión de textos, por ejemplo, es una de las áreas en las que software ha integrado modelos de lenguaje con mayor rapidez (lo que es natural dado que el material con el que se trabaja es el lenguaje). El diseño gráfico está experimentando ya el impacto de la IA generativa y campos como la edición de vídeo y audio se beneficiarán de nuevas herramientas en un plazo breve, bien mediante extensiones del software tradicional (limpieza de la imagen, transiciones dinámicas de vídeo, selección de fragmentos relevantes...), bien mediante la aparición de herramientas que transformen lenguaje natural en acciones de edición (montaje automático del vídeo o audio a partir de los materiales en bruto). Habrá que estar atentos a la aparición de estas herramientas en tanto son multiplicadoras de la eficiencia de los recursos humanos existentes y, hoy por hoy, hacer desarrollos propios en esas áreas no es prioritario.

Esto no significa que no sea necesario hacer desarrollos específicos en algunos ámbitos. Por poner un ejemplo, una adecuada información a los usuarios requiere que los agentes tengan acceso a la información institucional y que ésta sea la adecuada (por temática, por vigencia...). Estos desarrollos propios no tienen por qué facilitar una solución completa: posiblemente se integrarán en soluciones informáticas que se ofrecen ya al mercado. Es decir, la interacción propia de un bot de texto o de interacción oral ya está desarrollada y se puede contratar a terceros (no tiene sentido reinventar la rueda), pero la selección y preparación de la información que alimenta a estos frontales de usuario puede requerir desarrollos propios.

Lo ideal sería que la iniciativa de adoptar la IA partiera de los miembros de estos colectivos. Son quienes mejor conocen su campo de actividad y quienes pueden valorar la adecuación de las herramientas para el tipo de funciones que desempeñan.

En los casos en los que no se aprecie esa iniciativa, se deberá apostar, en primer lugar, por la formación especializada y, cuando sea necesario, por acciones de consultoría  que permitan identificar las herramientas más adecuadas y planificar su despliegue.

=== Grupo 2: Gestores <sec:grupo-gestores>

Entendemos que son gestores los usuarios de aplicaciones desarrolladas en la universidad. Esto incluye a los miembros del PTGAS, pero también al PDI o al PI cuando realizan tareas de gestión.

En relación con las necesidades de gestión de carácter general, en una primera fase el despliegue de la utilización de herramientas de IA por parte de la UJI se ha producido ofreciendo licencias corporativas (Gemini, Copilot) que facilitan la utilización y aseguran la confidencialidad de la información), un servicio de análisis de los problemas de seguridad y confidencialidad en la contratación de licencias distintas y formación general respecto a la utilización de la IA y de estas herramientas generales en distintos usos.

Otro frente de uso de herramientas IA se dará a través de la integración de esta en las herramientas que facilita la universidad. Si, por ejemplo, se integra un asistente en el gestor de compras menores o un validador de estilo en ciertos campos, los usuarios interactuarán con la IA a través de esa herramienta. La formación necesaria es menor para este tipo de usos si he tenido en cuenta la experiencia de usuario y la usabilidad en el diseño de las integraciones.

=== Grupo 3: analistas de datos y usuarios avanzados <sec:grupo-analistas-de-datos-y-usuarios-avanzados>

Los analistas de datos y otros usuarios avanzados (por ejemplos, determinados directivos, como jefes de servicio que realizan tareas de análisis y _reporting_ que requiere habilidades de análisis de datos) deben ser tratados como un perfil especial porque tienen necesidades particulares de acceso a la información y disponen de habilidades técnicas para tratarla y, también, para generar conocimiento institucional que debe poder ser compartido de forma eficiente.

En algún caso presentan, además, un perfil técnico que permite el liderazgo en la construcción de demostrativos y proyectos piloto de desarrollo para su posterior generalización, en caso de éxito.

Es imprescindible que este grupo de usuarios disponga de un acceso adecuado a la información que necesitan, que se consensúen los criterios que permitan la utilización de tecnologías comunes que puedan ser compartidas y que dispongan de medios para poder compartir desarrollos y poner a disposición de otros usuarios los resultados.

Han de tener una formación que permita asegurar la confidencialidad de la información que manejan, que en ocasiones puede ser de carácter personal y estar protegida. Estos usuarios han de vitar facilitar datos en bruto a modelos externos y orientas el uso de la IA a la construcción de herramientas que procesan los datos en local o con ayuda de modelos sobre los que hay garantías suficientes de seguimiento de políticas respetuosas con el RGPD.

También es necesario que se utilice una arquitectura de código limpio en la que esté totalmente desacoplada la capa de presentación de la capa de lógica. Los scripts de procesamiento de la información deberían ser “cajas negras” que recibe datos y devuelve resultados, que pudieran ser ejecutados de forma independiente a la herramienta que se utilice para la interacción y visualización en la fase de prototipado. De este modo se facilita el prototipado, el escalado a las fases de piloto y producción y la traducción a otros lenguajes de programación. Y también se permite que se pueda compartir el conocimiento que se está generando (aplicaciones de análisis, consultas, informes, dashboards, scripts ETL, etc. ).

=== Grupo 4: desarrolladores <sec:grupo-desarrolladores>

En cuarto lugar se encuentran los desarrolladores de software, que están todos adscritos a la UADTI.

Por una parte son usuarios de entorno de desarrollo que permiten gestionar el ciclo de vida del software de modo que son, cada vez, más rápidos y eficientes (planificación, prototipado, desarrollo, testeo, refactorización, despliegue...).

Además, en la unidad hay perfiles que mantienen la base de datos y a través de las herramientas que construyen se recoge buena parte de la información relevante y necesaria para los desarrollos de herramientas y agentes mediante IA.

Por último, son quienes van a desarrollar y mantener las aplicaciones propias que integren IA que, tras pasar la fase de pruebas piloto, pasen a fase de producción.

En las instituciones el equipo de desarrollo tiene una presión operativa por mantener las aplicaciones en funcionamiento, adaptarlas y efectuar nuevos desarrollos de otro tipo que puede afectar a los recursos disponibles para desarrollo de proyectos de innovación y a la decisión de los proyectos de innovación que se acometen.

==== Capa de innovación y pruebas de concepto <sec:capa-de-innovación-y-pruebas-de-concepto>

#text(fill: red)[Llevar esto a otro apartado de gobernanza y procesos. Tiene material bueno para la intro.]

Para favorecer el despliegue de la IA en la gestión debería definirse y dedicar recursos a una capa de innovación, que a partir de las necesidades definidas por el grupo de detección y priorización de necesidades de usuarios desarrollen pruebas de concepto, las prueben con usuarios seleccionados y en su caso, las eleven a pruebas piloto a probar, de nuevo con un grupo mayor de usuarios seleccionados para, en su caso, pasar finalmente a desarrollo para explotación. Los recursos asignados (propios o externos a través de contratos específicos para proyectos o mediante un lote de la cartera de proyectos) deberían permitir desarrollar un número suficiente de proyectos.

Favorecer esta capa de innovación y de ensayo de agentes que faciliten en análisis o la gestión es muy relevante para ensayar la viabilidad y permitir la maduración de los proyectos. El reciente estudio #link("https://mlq.ai/media/quarterly_decks/v0.1_State_of_AI_in_Business_2025_Report.pdf")["The GenAI Divide: State of AI in Business 2025"], elaborado por investigadores del MIT (Massachusetts Institute of Technology), ha llegado a la conclusión de que el 95~% de los proyectos piloto de inteligencia artificial generativa en las empresas no logran generar un impacto financiero medible o un retorno de inversión (ROI) positivo.

El detalle del embudo es el siguiente. El 60~% de las empresas evalúan herramientas de IA. Solo el (20~%) llega a la fase de prueba o prototipo. Únicamente el 5~% de los proyectos iniciales logran integrarse con éxito en los flujos de trabajo reales y generar valor económico.

Según el informe, el problema no suele ser la tecnología en sí (los modelos recientes aludidos con anterioridad son potentes), sino las barreras estructurales:

Existen brecha de integración, o dificultades para conectar la IA con los procesos de negocio existentes. También una excesiva expectativa para procesos en los que se pretende una delegación de funciones en la IA, cuando debiera ser definida como un mero asistente. También existen barreras de coste en los desarrollos y falta de objetivos claros: Gartner señala que el 30~% de los proyectos se abandonan después de la "Prueba de Concepto" debido a la mala calidad de los datos, costos crecientes o falta de un valor de negocio claro.

A pesar de este alto índice de "fracaso" corporativo, el uso individual es masivo: los empleados suelen usar IA por su cuenta (_shadow AI_) para tareas sencillas como redactar correos (70~% de adopción).

Disponer, por tanto, de un recursos y de un método para el desarrollo de pruebas de concepto y de demostradores que puedan transformarse en pruebas piloto va a favorecer la tasa de éxito de los proyectos y la penetración de la tecnología. Y va a evitar que los “fracasos” que se produzcan, consuman costosos recursos que deberían destinarse a otros desarrollos relevantes.

== Perfiles de uso de la IA <sec:usos-de-la-ia>

Otra aproximación adecuada para evaluar las necesidades, adicional a los perfiles de grupos de usuarios es la clasificación de los posibles usos que puede realizarse de la IA en la gestión universitaria.

=== Tratamiento y entrada de datos sin herramientas de apoyo <sec:tratamiento-y-entrada-de-datos-sin-herramientas-de-apoyo>

Buena parte del trabajo administrativo y de gestión se dedica a
- la redacción de documentos,
- la transcripción de intervenciones en datos o
- la introducción de información que alimenta a la base de datos corporativa.

La mayor parte de usuarios que realizan esta tarea son ajenos al uso de IA, aunque hay soluciones que permitirían automatizar (mediante agentes IA o mediante _scripts_ deterministas) muchos de los procesos en los que participan.

Los usos principales para este público son:

- Consulta asistida por IA de los manuales de uso de las aplicaciones de registro de datos.

- Consulta asistida por IA del marco legal que rige en el dominio de aplicación para el que se introducen datos.

- Aplicación de guías de estilo para la introducción de datos con supervisión de IA.

- Revisión de validez de datos a partir de reglas especificadas en lenguaje natural, de modo que se detecten patrones que señalan un posible error.

=== Copilotos <sec:copilotos>

Las herramientas de IA se pueden utilizar como copilotos para tareas concretas. El uso como copiloto puede estar presente en herramientas externas y en herramientas de desarrollo propio y tiene varias modalidades:

- Copiloto desarrollado externamente e integrado en aplicaciones externas (Google docs, suite ofimática de Microsoft, correo electrónico).

- Asistente para la generación de campos de texto (autorellenador y sugeridor para campos de texto libre).

- Manual interactivo de uso de una aplicación (chatbot).

- Consultor de aspectos legales o normativos que han servido para especificar una aplicación (chatbot).

- Revisión de validez de campos de un formulario (mediante comprobación en base de datos o verificación de consistencia de los campos rellenados por el usuario).

- Revisión de seguimiento de normas de estilo en los campos de un formulario (uso de una lengua concreta, codificación de fechas y valores numéricos, ortografía...).

Buena parte de la carga de gestión derivada de estas tareas se podría aliviar mediante herramientas adaptadas a las necesidades específicas de los perfiles de usuarios más generalizados. En otros casos, como para el resumen de las intervenciones en un acta o para la transcripción de voz a texto o la traducción, pueden utilizarse aplicaciones estándar, que están suficientemente maduras y ofrecen un resultado muy adecuado.

=== Asistentes para la generación de informes <sec:asistentes-para-generar-informes>

En numerosos procesos de gestión se solicitan memorias o informes a elaborar por los usuarios. Para su elaboración se han de utilizar datos _online_ u _offline_ (documentos, páginas web, etcétera...).

El informe puede ser un documento estático (un documento Word o PDF). Se puede utilizar como copiloto en la generación del informe herramientas como el chat de gemini o el NotebookLM, o agentes como Claude Cowork, proporcionando documentos y colecciones de datos y proporcionando un _prompt_ que permite obtener un resultado.

Se han efectuado pruebas piloto para favorecer la utilización de herramientas como _gems_ de Google como asistente en la redacción de informes que han ofrecido un resultado mejorable por la tendencia a alucinar de los LLM, a pesar de estar anclados a datos, especialmente si el contexto de la información ofrecida es extenso y se exige precisión en la información.

Sería necesario avanzar para poder ofrecer agentes específicos en los que parte del informe sea determinista (especialmente cuando se reproducen textos o se incorporan datos) y la IA solo ayude en la reflexión y valoración, requiriendo siempre la revisión, retroacción y validación del humano. Estos agentes pueden integrarse en aplicaciones institucionales (junto con los visores dinámicos de tablas o graficadores que ya se utilizan) o en aplicaciones específicas que consulten la información institucional y elaboren el informe combinando el contenido determinista con el contenido valorativo y guerreando el adecuado flujo de interacción entre IA y usuario.

Para asegurar la consistencia del informe final se podría añadir una capa de supervisión (IA supervisora con un prompt específico) y realizar formación para que los gestores entiendan que el agente es un asistente y que no deben delegar las decisiones.

=== Acceso y análisis de datos <sec:acceso-y-análisis-de-datos>

Actualmente el análisis se efectúa facilitando datos _online_ para que la IA genere los scripts para su análisis y manipulación. En muchos casos, este análisis o manipulación es instrumental para la generación de un informe.

En concreto, teniendo en cuenta la capacidad técnica del perfil de analista de datos, en el análisis de datos se están utilizando distintas herramientas que analizan hojas de cálculo previamente descargadas. Sería imprescindible disponer de instrumentos para el acceso programático a la información.

Las hojas de cálculo irán integrando copilotos que faciliten el análisis o manipulación de los datos, pero hoy es posible hacer esos análisis y manipulaciones con herramientas que leen las hojas de cálculo y operan con la información que contienen. El resultado de los análisis puede ser un informe o una nueva hoja de cálculo. Los agentes de desarrollo (como Claude Code) son especialmente útiles para este tipo de operaciones generando programas (típicamente en Python) que aseguran un comportamiento determinista de los cálculos y análisis.

=== Usuarios de agentes <sec:usuarios-de-agentes>

Es el perfil que será corriente en el futuro, pero que ahora es experimental. Supone ejecutar y, posiblemente, orquestar agentes para efectuar tareas concretas. El agente tiene a su disposición una serie de herramientas y se espera que, con ellas, ejecute una tarea y la complete accediendo al sistema de ficheros, al navegador y a otras fuentes de información. El usuario asiste al agente, lo dirige y valida sus acciones, porque en última instancia es el responsable de los efectos que este produce.

Para que los agentes resulten útiles es necesario conectarlos con el mundo exterior, bien a través de MCP construidos al efecto (desarrollos propios), bien usando extensiones que les dan acceso a un navegador (lo que presenta ciertos riesgos).

Resulta prioritario identificar tareas que consumen tiempo de gestión y que pueden ser aliviadas mediante agentes específicos para centrar los esfuerzos en desarrollar pruebas de concepto, pruebas piloto y, finalmente, pasar a explotación, agentes específicos para estas tareas.

=== Generación de herramientas de uso personal <sec:generación-de-herramientas-de-uso-personal>

Se utilizan especialmente para trabajar con fuentes de datos, pero también pueden servir para automatizar tareas. Se trata en concreto de:

- herramientas que pueden ser de un solo uso, pero requieren la creación de código,

- herramientas cuya especificación es muy dinámica y evolucionan constantemente, por lo que nunca llegan al punto de estabilidad propio del software corporativo.

El uso de agentes de generación de código, como Claude Code, Gemini CLI o Codex, permite construir estas herramientas de uso personal con una formación mínima. No obstante, es importante definir criterios (lenguaje, librerías, interfaces...) que permitan asegurar:

- La mantenibilidad y no obsolescencia de las herramientas. Se ha de formar a los usuarios en buenas prácticas (creación de entornos virtuales, empaquetado en contenedores...)

- Su ejecución en entornos que suministra la casa (para evitar un parque de configuraciones personales incompatibles).

- Su compartición con compañeros cuando convenga (de lo que hablamos en el siguiente apartado) mediante repositorios.

=== Generación de herramientas para uso en círculo reducido <sec:generación-de-herramientas-para-uso-en-círculo-reducido>

Creación de herramientas que solo usarán dos o tres personas en la casa, usualmente

- del mismo servicio, por gente con perfiles similares o donde un perfil crea la herramienta y un grupo muy reducido de personas del servicio (dos o tres) son consumidores de la herramienta,

- de servicios afines, por gente con perfiles similares,

- o de un servicio y miembros de la capa directiva que necesitan monitorizar datos.

Al igual que el software de uso personal, su dinamismo dificulta o imposibilita una especificación estable del software que se construye, lo que hace difícil estandarizar y estabilizar el software al mismo nivel que el de herramientas de uso transversal.

Aquí es especialmente importante asegurar la mantenibilidad de las herramientas, la disponibilidad de entornos bien configurados y la compartición mediante repositorios compartidos.

=== Agentes de desarrollo de software <sec:agentes-de-desarrollo-de-software>

Este tipo de uso afecta a los desarrolladores de aplicaciones corporativas. Su objetivo es trabajar con software bien especificado, que se puede desplegar con versiones evolutivas pero es estable en general, que usa un público relativamente amplio.

La IA se encarga de la escritura del código, de la realización sistemática de tests, etcétera a partir de la especificación que facilita el desarrollador. Se puede usar:

- Para desarrollar rápidamente especificaciones ejecutables del software que demanda una unidad. La IA puede crear mockups de las fuentes de datos y prototipos de la aplicación que se construyen en sesiones con el desarrollador y el product owner.

- El desarrollador puede construir el software que acabará en producción a partir de la especificación ejecutable o como evolución de esta. Su papel es asegurar la calidad del código y el seguimiento de los estándares de desarrollo de la universidad.

- Se pueden automatizar pruebas del sistema real con las herramientas apropiadas (Playwright) y asegurar con ellas la calidad del software. Las pruebas pueden tener la forma de repositorio de prompts comprensibles para los usuarios finales del software.

El colectivo de desarrolladores es uno de los que va experimentar un mayor impacto de la IA y el que más puede aprovechar su uso en el corto plazo dada la madurez de las herramientas existentes desde el cuarto trimestre de 2025.

Es, además, el colectivo del que depende quien efectúa tratamiento e introducción de datos para pasar a utilizar Copilotos o Agentes y el que tiene el conocimiento para despegar infraestructura a USO PERSONAL o USO EN CÍRCULO REDUCIDO y darles directrices.

== Formación <sec:formación>

La implantación de la IA requiere formación adecuada. Según establece el Reglamento (UE) 2024/1689 del Parlamento europeo y del Consejo, de 13 de junio de 2024, por el que se establecen normas armonizadas en materia de inteligencia artificial, en su artículo 4:

#quote(block: true)[
    Los proveedores y responsables del despliegue de sistemas de IA adoptarán medidas para garantizar que, en la mayor medida posible, su personal y demás personas que se encarguen en su nombre del funcionamiento y la utilización de sistemas de IA tengan un nivel suficiente de alfabetización en materia de IA, teniendo en cuenta sus conocimientos técnicos, su experiencia, su educación y su formación, así como el contexto previsto de uso de los sistemas de IA y las personas o los colectivos de personas en que se van a utilizar dichos sistemas.
]

Hasta la fecha, se han preparado cursos dirigidos a la utilización de las licencias ofrecidas institucionalmente (Gemini, NotebookLM...) para perfiles de usuarios concretos. En el plan de formación también se han previsto otros cursos dirigidos a perfiles de usuarios concretos. Sin embargo, las necesidades de formación no están completamente cubiertas y han de adaptarse a las necesidades que se prioricen a los perfiles de usuarios a quienes afecten y a los usos de la tecnología afectados.

= El marco de gobernanza y el Reglamento europeo de la IA <sec:ria>

El despliegue de la Inteligencia Artificial Generativa (IAG) en la UJI no puede abordarse sin un marco de modelo de gobernanza sólido y debe plegarse a los principios y exigencias del citado el Reglamento (UE) 2024/1689. Puede resultar útil como referencia la reciente aprobación por parte de la Agencia Española de Protección de Datos (AEPD), de la política general para el uso de la IA Generativa en procesos administrativos de la AEPD. Es necesario instaurar una estructura organizativa que garantice que la innovación y la utilización de la IAG sea compatible con la seguridad jurídica, la ética y la protección de los derechos de los usuarios.

Este marco de gobernanza debe sustentarse en una política de gestión de riesgos que evalúe previamente cada caso de uso, clasificando las herramientas según su nivel de integración y su carácter más o menos crítico. Para ello, es necesario aprobar políticas explícitas que regulen aspectos críticos como la selección de soluciones tecnológicas, el tratamiento de información confidencial y datos personales, la ciberseguridad específica para modelos de IA y la supervisión humana obligatoria en procesos de toma de decisiones, asegurando así la integridad y la disponibilidad de la información institucional.

Finalmente, para que estas políticas sean efectivas, la UJI debe dotarse de procedimientos que efectúen un seguimiento de las políticas durante el ciclo de vida de la IA. Esto implica establecer protocolos formales para la aprobación y diseño de nuevos casos de uso, mecanismos ágiles para la gestión de incidentes específicos (como alucinaciones, sesgos o inyecciones de prompts) y auditorías periódicas de supervisión. Solo mediante esta sistematización del marco de aplicación y control, se podrá pasar de la aplicación de la IAG en experiencias piloto aisladas a una implantación sistémica que reduzca las amenazas de seguridad y fortalezca la confianza en la institución

= Planificación de la implantación <sec:planificación>

#{
    set heading(numbering: none)
    for área in plan {
        heading([Área #área.número: #eval(área.área, mode: "markup")], level: 2)
        terms(
            ..for objetivo in área.objetivos {
                (
                    terms.item(
                        [Objetivo #objetivo.número:],
                        [#eval(objetivo.objetivo, mode: "markup")
                            #terms(
                                ..for acción in objetivo.acciones {
                                    (
                                        terms.item(
                                            [Acción #acción.número:],
                                            eval(acción.acción, mode: "markup"),
                                        ),
                                    )
                                },
                            )
                        ],
                    ),
                )
            },
        )
    }
}


= Calendario y responsables <sec:calendario>

Planificación del despliegue de IA (2 años desde la aprobación del plan)


// Cronograma
#{
    let celdas = ()
    for área in plan {
        celdas.push(table.cell(fill: gray.lighten(80%), colspan: 6)[*#área.número: #área.área*])
        for objetivo in área.objetivos {
            for acción in objetivo.acciones {
                celdas.push([Acción #acción.número.: #acción.breve])
                celdas.push([#acción.responsables.join(", ")])
                celdas.push(if 1 in acción.semestres { table.cell(fill: black.lighten(40%))[] } else { [] })
                celdas.push(if 2 in acción.semestres { table.cell(fill: black.lighten(40%))[] } else { [] })
                celdas.push(if 3 in acción.semestres { table.cell(fill: black.lighten(40%))[] } else { [] })
                celdas.push(if 4 in acción.semestres { table.cell(fill: black.lighten(40%))[] } else { [] })
            }
        }
    }

    set text(size: .8em)
    set par(justify: false)
    table(
        columns: (1fr, 4cm, 1cm, 1cm, 1cm, 1cm),
        align: (left),
        table.header(
            table.cell(rowspan: 2, align: horizon)[*Área y acción*],
            table.cell(rowspan: 2, align: horizon)[*Responsables*],
            table.cell(colspan: 4, align: center)[*Semestres*],
            table.cell(align: center)[*1*],
            table.cell(align: center)[*2*],
            table.cell(align: center)[*3*],
            table.cell(align: center)[*4*],
        ),
        ..celdas,
    )
}


#pagebreak()

#appendix[
    = Contratación de los modelos y herramientas relacionadas <sec:contratación>

    Hay varias modalidades de uso de los modelos privativos y/o abiertos y cada unos comporta unos costes directos o indirectos.

    - *Suscripción a modelos privativos*, con diferentes niveles o intensidades de uso y con licencias de uso personal o de equipos de trabajo (empresa):

        - *Gratis*: Generalmente muy limitado, con restricciones en el volumen de uso y el acceso a determinados modelos, así como el interfaz de uso (suele ser un _chat web_).

        - *Consumidor*: en torno a 20 euros al mes por usuario. Válido para usos puntuales por un particular.

        - *Consumidor Pro*: en torno a 100 euros al mes por usuario. Uso intenso por un particular o moderado para un profesional.

        - *Profesional*: en torno a 200 euros al mes por usuario. Uso intenso por un profesional.

    - *Pago por uso de modelos privativos y abiertos*. El coste es proporcional a los _tokens_ de entrada y salida#footnote[Aunque hay más factores que modulan los precios, como el uso de caché, el modelo usado, la intensidad de "pensamiento", el procesamiento por tandas, descuentos por volumen alto...].

        - *Gratis*: Muy limitado en el número de tokens. Solo vale para pruebas de concepto.

        - *Modelos rápidos*. Entre 0,10 y 0,80 euros por 1M tokens de entrada y entre 0,40 y 4,00 euros por 1M de tokens de salida.

        - *Modelos lentos* (con razonamiento, con diferente intensidad de pensamiento). Entre 2,00 y 5,00 por 1M de tokens de entrada y entre 12,00 y 25,00 euros por 1M de tokens.

        El pago por uso se pueden contratar con el proveedor del modelo o con intermediarios como OpenRouter, Azure, AWS, etcétera.

    - *Despliegue de modelos abiertos en infraestructura propia*, bien en nube privada, bien en equipos _on premise_. Está limitado a los modelos abiertos que, como hemos dicho, hoy por hoy no ofrecen las prestaciones de los modelos líder. En principio, es la fórmula más económica, pero:

        - Los modelos de altas prestaciones consumen grandes recursos computacionales y un despliegue con medios propios no parece aconsejable: hay problemas que están están externalizados en las otras modalidades de uso:
            - escalabilidad para atender una demanda variable,
            - y personal con experiencia en la gestión de _hardware_ específico.


        - Los modelos medianos y pequeños aún acusan ciertos problemas que dificultan la adopción: tasas altas de alucinación, mezcla de lenguas en la salida, falta de foco en periodos de tiempo medios... Pueden ser útiles en tareas muy específicas (reconocimiento o síntesis de voz, por ejemplo), por lo que no sustituyen a los modelos de gran tamaño si la fiabilidad es un factor a considerar.

    Ciertos usos de los modelos privativos se pueden gestionar con suscripción, otros obligan a usar _pago por uso_ y otros permiten elegir una u otra modalidad. Ponemos algunos ejemplos:

    #figure(
        align(center, [
            #set par(justify: false);
            #table(
                columns: (1fr, .3fr, .3fr),
                align: (left, left, left),
                stroke: none,
                table.header(
                    table.hline(),
                    [*Uso*], [*Suscripción*], [*Pago por uso*],
                    table.hline(),
                ),
                [Desarrollo de software con agentes desde línea de órdenes], [Sí], [Opcional, tras agotar el límite],
                [Desarrollo de software en un IDE con agentes], [Sí], [Opcional,tras agotar el límite],
                [Integración de la IA en software propio],
                [No siempre#footnote[En enero de 2026, Anthropic, por ejemplo, lo ha prohibido, y OpenAI, como reacción, lo ha permitido expresamente.]],
                [Sí],
                [Copiloto en editor de texto, correo, etcétera], [Sí], [No],
                [Chatbot facilitado por el proveedor], [Si], [En principio, no],
                [Chatbot con desarrollo propio], [No], [Sí],
                [Agentes en desarrollos propios],
                [No siempre],
                [Sí],
                table.hline(),
            )]),
        kind: table,
    )

    Las modalidades de _pago por uso_ son más costosas que las de suscripción para usos intensivos, por lo que parece más interesante decantarse por la suscripción cuando esta es suficiente. En función del perfil de usuario y de lo que el mercado permite contratar, hay diferentes soluciones:

    - Para un uso como asistente en la consulta de información con chat, resumen de documentos, generación esporádica de informes... basta con una suscripción de usuario convencional (organizada en equipos de trabajo, cuando sea posible).

    - Para un uso más intenso como agente (desarrollo de software, análisis de datos, generación habitual de informes, etcétera...), una suscripción en la capa Profesional parece suficiente para un trabajo de 7 horas diarias de uso del agente. Esta modalidad tiene la ventaja, frente al _pago por uso_, de  controlar eficazmente el límite de gasto, aunque también presenta el inconveniente de suponer un coste recurrente fijo.

    De acuerdo con el artículo «#link("https://epoch.ai/data-insights/llm-inference-price-trends")[LLM inference prices have fallen rapidly but unequally across tasks]» de Epoch AI, la eficiencia de los modelos aumenta exponencialmente con un factor medio de 40x anual (9x para los modelos que requieren de mayor potencia y 900x para los modelos rápidos).

    Esta mejora exponencial no significa necesariamente que se vaya a abaratar la contratación, pero sí que por un determinado precio se tendrá acceso a modelos más potentes.

    == Contratación pública <sec:contratación-pública>

    De lo expuesto se puede apreciar la dificultad que entraña la contratación pública de estos servicios:

    - los servicios están en evolución constante, sobre los es imposible establecer un conjunto de requisitos cerrado y definitivo,
    - las empresas son multinacionales que no se presentan a licitaciones locales, por lo que ha de interponerse algún intermediario (encareciendo el coste),
    - aunque los modelos sean comparables entre sí, no lo es tanto el ecosistema de herramientas e integraciones que ofrecen cada uno de los proveedores.

    Todo esto generar un escenario muy complejo a la hora de la contratación pública. En las suscripciones se compran licencias por persona (posiblemente agrupadas en equipos de trabajo) y en las modalidades de _pago por uso_ se compra crédito para el consumo de _tokens_. Esto hace que la contratación pase un modelo de acuerdo marco con intermediarios que faciliten la contratación a demanda de los diferentes modelos y modalidades, así como la facturación de los consumos realizados.

    Otra complicación técnica es el aseguramiento del cumplimiento de las exigencias del Reglamento UE de Inteligencia Artificial.


    === Contratación de suscripción con modelos privativos.
    <sec:contratación-de-suscripción-con-modelos-privativos.>
    Muchos perfiles pueden ver satisfechas sus necesidades con modelos de suscripción. Son aquellos que usan los LLM principalmente para consulta de información vía chat o hacen un uso esporádico de agentes (creación de documentos, análisis de hojas de cálculo).

    La contratación de licencias de suscripción debe encauzarse mediante un acuerdo marco con un intermediario que:

    - Facilite la contratación de licencias de diferentes proveedores, a demanda.

    - Gestione las licencias que permiten englobar a los usuarios en una organización (_team_).

    === Contratación de modalidades Pago por uso con modelos privativos. <sec:modo-pago-por-uso-con-modelos-privativos>

    Cuando la contratación se hace a través de uno de los proveedores incluidos en OCRE, se puede estudiar el uso de este acuerdo marco transnacional.

    === Contratación de modalidades Pago por uso con modelos abiertos.
    <sec:modo-pago-por-uso-con-modelos-abiertos>

    Cuando la contratación se hace a través de uno de los proveedores incluidos en OCRE, se puede estudiar el uso de este acuerdo marco transnacional.


    = Notas para el desarrollo de algunas acciones <sec:anexo-1-notas-para-el-desarrollo-de-algunas-acciones>

    == Objetivos: <sec:objetivos>

    - A medio plazo hay que evolucionar la actividad de tratamiento y entrada de datos hacia la utilización de herramientas COPILOTO. Para eso, hace falta formación y que otros grupos faciliten que los puestos de trabajo estén dotados de las herramientas necesarias. Los COPILOTO, por ejemplo, solo necesitan formación para usar herramientas de terceros, pero han de apoyarse en los productos que que generan otros (USO EN CÍRCULO REDUCIDO, DESARROLLO) para usar la IA eficazmente.

    - A corto plazo hay que detectar a candidatos a ASISTENCIA PARA GENERAR INFORMES y ofrecerles formación en el uso eficaz de Chatbots y NotebookLM. Sobre el uso de los Chatbot, hay que formar en el uso y compartición de prompts (lo que requiere dotarse de cierta infraestructura: repositorio compartido, versionado...). Sobre el uso de NotebookLM hay que formar en el uso de la herramienta y poner el acento en la compartición.

    - A corto plazo, hay que detectar los candidatos a USO PERSONAL y USO EN CÍRCULO REDUCIDO y ofrecerles formación, pero también hay que definir estándares y guías, Para USO EN CÍRCULO REDUCIDO hay que crear infraestructura para compartir prompts, compartir los artefactos generados, ejecutarlos en un entorno seguro (por control de acceso a la información manejada y para evitar ataques por inyección de código, uso de librerías vulnerables, etcétera).

    == Acciones para favorecer los distintos usos: <sec:acciones-para-favorecer-los-distintos-usos>

    == Copiloto <sec:copiloto>

    Definir la formación. Relacionar casos de uso.

    Orientar formación/capacitación a varios niveles

    == Agente <sec:agente>

    == Uso personal <sec:uso-personal>

    En principio no debería haber normas, pero es probable que los desarrollos de USO PERSONAL acaben en USO EN CÍRCULO REDUCIDO, por lo que conviene que sigan las normas del siguiente apartado

    == Uso en círculo reducido <sec:uso-en-círculo-reducido>

    Lo más urgente es establecer criterios para poder compartir el código. Esto obliga a seguir ciertos estándares que dependen del lenguaje/entorno de desarrollo.

    Por ejemplo, si el desarrollo es en Python, se ha de usar uv, un intérprete en entorno virtual, puntos de entrada documentados y, preferiblemente, una librería de interfaz gráfica determinada. Todo esto se puede especificar en un fichero TECNOLOGÍA.md~que se facilita al agente inicialmente. La plantilla ha de ser es un repositorio de _prompts_ y los usuarios han de saber usarla, lo que requiere disponer de una guía sobre cómo desarrollar para USO EN CÍRCULO REDUCIDO.

    Los equipos de las personas de este grupo han de tener cierto software preinstalado y/o han de tener permisos para instalar herramientas. Quizá haya que disponer de máquinas virtuales específicas para este tipo de uso.

    Se ha de evitar compartir hojas de cálculo en repositorios públicos, lo que obliga a tener muy protocolizada la creación de endpoints de acceso a la información.

    La identificación de los usuarios y sus permisos de acceso a la información también debe estudiarse para facilitar su configuración y edición.

    == Desarrollo <sec:desarrollo>

    En el grupo de desarrollo hay varias divisiones, que reflejan el punto de partida de diferentes subgrupos en el grupo humano de desarrollo.

    Por un lado tenemos:

    - Desarrollo en PL/SQL de lógica de negocio e interfaces en

        - Forms

        - Interfaces web sobre librerías de desarrollo propio.

    - Desarrollo con la pila UJI

        - Vistas que ofrecen acceso a la BD con las abstracciones propias de la lógica de negocio.

        - Lógica de negocio en Java, con uso de los datos a través de ORM. Exposición de datos y lógica de negocio vía endpoints REST.

        - Interfaz con aplicación web desarrollada en Javascript con ExtJS y acceso a la lógica de negocio via los endpoints.

    - Desarrollo de SPI.

    Es evidente que hay que seguir aproximaciones distintas según el tipo de desarrollo que se quiere transformar. El que experimentará una transformación más profunda es el primero (PL/SQL), especialmente si se basa en el uso de interfaces Forms, que deberían entrar en un proceso de extinción.

    Todo se apoya en la base de datos corporativa, que está dividida en áreas de negocio (GRE, GRH, GRI...).

    La BD ha crecido orgánicamente y, tras más de treinta años, presenta algunos problemas:

    - Falta de consistencia en el nombre de las tablas y sus columnas.

    - Falta de documentación.

        - El significado de las tablas no se puede deducir por el nombre ni está documentado.

        - El significado de las columnas no se puede deducir por el nombre ni está documentado.

    - Incoherencias entre tablas dentro de una misma área de negocio, pero especialmente cuando los datos se dividen en dos o más áreas de negocio.

        - Redundancia.

        - Inconsistencia.

    - Existencia de tablas obsoletas o temporales que nadie ha borrado.

    - Falta de criterios de codificación de la información por parte del colectivo MECANÓGRAFO, lo que plantea problemas de:

        - Confidencialidad y privacidad (aparecen nombres propios).

        - Estilo y ortografía (se usan mayúsculas o minúsculas, tildes o no tildes, valenciano o castellano, puntuación o ausencia de puntuación, siglas o abreviaturas arbitrarias, etcétera, sin ningún criterio).

        - Duplicidad de columnas con datos ligeramente distintos (pasa con la descripción de puestos de trabajo).

    Un primer problema, por tanto, es la documentación de la BD y el establecimiento de estándares para la información que contiene.

    === Documentación de la BD <sec:documentación-de-la-bd>

    La IA puede usarse para documentar la BD#footnote[La falta de documentación de la BD es una debilidad que se arrastra desde hace mucho tiempo.], pero ha de hacerse con criterios y formatos orientados al consumo de esa documentación por parte de la propia IA. El corpus de conocimiento que se va a crear será crítico para desarrollos futuros con IA.

    Deberíamos empezar a documentar un área de negocio con:

    - Estructura general del área de negocio.

    - Listado de tablas con explicación de cada una de ellas y su relación con otras tablas.

    - Si hay funciones de lógica de negocio codificadas en procedimientos PL/SQL, relacionarlas y documentarlas exhaustivamente, explicitando las dependencias que crean respecto de otro código y de tablas específicas.

    - Aplicaciones finales que hacen uso de cada tabla, detallando el papel de la tabla en la aplicación.

    === Calidad del dato en la BD <sec:calidad-del-dato-en-la-bd>

    Se ha de definir una guía de estilo para la información de la BD.

    - Cómo se han de codificar los nombres de personas para asegurar confidencialidad (iniciales de nombre y apellidos, últimos 3 dígitos del DNI, ...)

    - Cómo se han de codificar fechas e importes en campos de texto libre.

    - La lengua que se ha de usar SIEMPRE.

    Se ha de actuar en varias fases:

    - Divulgar la guía de estilo y forzar a su uso.

    - Limpiar la información existente para que siga la guía, usando una IA para ayudar a detectar usos inconsistentes y proponer versiones corregidas (que ha de validar un humano).

    - Integrar verificadores de corrección en aplicaciones. (Aquí tenemos un problema con las aplicaciones Forms).

    === Abandono progresivo de Forms y transición a interfaces de formulario desarrollas con IA <sec:abandono-progresivo-de-forms-y-transición-a-interfaces-de-formulario-desarrollas-con-ia>

    Aunque aún hay desarrollo activo con PL/SQL, ha de considerarse legacy y aprovechar el esfuerzo para migrar a herramientas más modernas.

    Para desarrollar un nuevo programa es necesario:

    - Describir ficheros con las reglas de desarrollo de la casa (lenguajes, librería, estilo de codificación, etcétera) que deben usarse necesariamente en los desarrollos. Este fichero tendrá siempre el mismo nombre (por ejemplo, TECNOLOGÍA.md).

    - Para cada operación se de ha crear un documento que explique el propósito del programa y el fichero ha de tener siempre el mismo nombre (por ejemplo, PROCEDIMIENTO.md).

    - Para cada operación ha de crearse un formulario específico y debe estar documentado/especificado en un fichero de texto (por ejemplo, FORMULARIO.md). En todo momento se ha de pedir a la IA que mantenga el fichero en sincronía con el desarrollo.

    - Para cada operación se ha de documentar los endpoints que necesita, indicando cuándo son de consulta y cuándo son de escritura y/o potencialmente destructivos. El documento siempre tendrá el mismo nombre (por ejemplo, ENDPOINTS.md).

    - Para cada operación, se ha de documentar los perfiles de usuario que han de tener acceso y de qué tipo. El documento siempre tendrá el mismo nombre (por ejemplo, PERMISOS.md) y contendrá descripciones de perfiles de diferente tipo (relación de colectivos que lo pueden usar (PDI, PTGAS, estudiantes, público en general), relación de servicios que lo pueden usar, relación de personas que lo pueden usar a título individual, relación de cargos académicos o responsables que lo pueden usar...).

    Las plantillas de los diferentes tipos de fichero han de estar en un repositorio actualizado (bajo el control y la edición de un grupo concreto de desarrolladores).

    Al crear un nuevo formulario, se ha de preparar un entorno en el que estén los ficheros indicados. El código se desarrollará con agentes, a los que habrá que indicar qué ficheros describen la tecnología, el procedimiento, etcétera (para lo que convendrá tener un fichero `INSTRUCCIONES.md` con el que alimentar al agente.)

    (Todo esto es aproximativo, pero permite ver el tipo de tareas que hay que gestionar en el nuevo modelo de desarrollo).

    Idealmente, si se ofrece la posibilidad de descargar las sesiones de desarrollo (la interacción con el agente), debería poder gestionarse como un artefacto del desarrollo, porque puede ayudar en el futuro en procesos de depuración o de evolución del software.

    = Implicaciones del Reglamento (UE) 2024/1689 (Reglamento de Inteligencia artificial) <sec:anexo-2.-implicaciones-del-reglamento-ue-20241689-reglamento-de-inteligencia-artificial>

    El Reglamento UE de Inteligencia Artificial (RIA) establece un marco jurídico uniforme para fomentar una IA fiable y centrada en el ser humano, protegiendo la salud, seguridad y derechos fundamentales. Su enfoque se basa en el riesgo, clasificando los sistemas según el peligro que representan para los derechos de las personas.

    El Reglamento introduce obligaciones específicas para los "proveedores" (desarrolladores) y los "responsables del despliegue" (entidades que usan la IA, en este caso, la UJI).

    == Clasificación de Riesgos y su Aplicación a la UJI <sec:clasificación-de-riesgos-y-su-aplicación-a-la-uji>

    El RIA establece una pirámide de riesgos que afecta directamente a los casos de uso que se plantean en el presente documento.

    === Prácticas Prohibidas (Riesgo Inaceptable) <sec:prácticas-prohibidas-riesgo-inaceptable>

    La UJI *no* podrá desplegar ni desarrollar sistemas que entren en estas categorías:

    - Reconocimiento de emociones en la comunidad universitaria: Está prohibido usar IA para inferir emociones de una persona física en los lugares de trabajo y en los centros educativos.

    - Puntuación ciudadana (Social Scoring): Evaluar o clasificar a personas basándose en su comportamiento social.

    - Categorización biométrica: Clasificar personas para deducir raza, opiniones políticas, afiliación sindical, convicciones religiosas o vida sexual.

    === Sistemas de Riesgo Elevado <sec:sistemas-de-riesgo-elevado>

    El Anexo III detalla los ámbitos considerados de alto riesgo, donde la UJI actuará como responsable del despliegue.

    ==== Sistemas aplicados en la educación <sec:sistemas-aplicados-en-la-educación>

    - Sistemas para determinar el acceso o la admisión de estudiantes.

    - Sistemas para evaluar los resultados del aprendizaje (calificar exámenes o trabajos). Sistemas para evaluar el nivel de educación adecuado que recibirá una persona.

    - Sistemas para la detección de comportamientos prohibidos durante los exámenes (anti-plagio avanzado o _proctoring_).

    Aunque la aplicación en la docencia está excluida, se hace referencia expresa porque los sistemas de calificación acaban implicando a actividades de gestión a través de los sistemas de gestión de la calidad.

    ==== Empleo y Gestión de Trabajadores (PTGAS/PDI) <sec:empleo-y-gestión-de-trabajadores-ptgas-pdi>

    - Sistemas para la selección y contratación de personal (filtrado de CVs).

    - Sistemas para tomar decisiones sobre promoción, o evaluación del rendimiento.

    Si la Universidad quisiera desarrollar o desplegar estos sistemas, debería realizar una “Evaluación de impacto relativa a los derechos fundamentales” antes de su uso , inscribirlos en la base de datos de la UE y garantizar supervisión humana.

    === IA de uso general y riesgo limitado (Obligación de transparencia) <sec:ia-de-uso-general-y-riesgo-limitado-obligación-de-transparencia>

    Este riesgo limitado afecta a chatbots, asistentes,o a sistemas de generación de contenido.

    Los sistemas destinados a interactuar con personas (chatbots de atención al estudiante) deben informar al usuario de que está hablando con una IA.

    Los sistemas que generen audio, imagen, video o texto sintético deben marcar los resultados en formato legible por máquina para que se detecte que son artificiales.

    === Excepción en materia de investigación <sec:excepción-en-materia-de-investigación>

    Aunque la aplicación de la IA en la investigación también está excluida conviene tener en cuenta que el Reglamento no afecta a los sistemas o modelos de IA desarrollados y puestos en servicio específicamente con la finalidad de investigación y el desarrollo científicos. No obstante, resulta plenamente aplicable a la gestión y a la docencia.

    == Implicaciones del RIA para el plan de implantación <sec:implicaciones-del-ria-para-el-plan-de-implantación>

    === Gobernanza e Innovación (Ajuste al RIA) <sec:gobernanza-e-innovación-ajuste-al-ria>

    El Modelo de Gobernanza debe integrar los roles definidos en el RIA.

    === Formación <sec:formación>

    El Reglamento obliga a los responsables del despliegue (UJI) a garantizar que su personal tenga un nivel suficiente de alfabetización en IA. Por tanto, ell plan de formación es un requisito legal.

    === Diseño de software y supervisión <sec:diseño-de-software-y-supervisión>

    Los sistemas de alto riesgo deben diseñarse para ser vigilados por personas físicas. En los procedimientos de desarrollo (ficheros .md), se debería definir quién es el humano responsable de validar una decisión tomada por IA.

    Si la UJI desarrolla internamente una herramienta de alto riesgo (para evaluar alumnos o filtrar candidatos (RRHH), se convierte en proveedor y debería cumplir el artículo 16 del RIA sistema de gestión de calidad, documentación técnica, marcado CE y declaración de conformidad.

    En la utilización de modelos externos para uso general se deberá asegurar que el proveedor de dicho modelo cumple con las obligaciones de documentación técnica y respeto a los derechos de autor previstas en el artículo 53.

    === Contratación <sec:contratación>

    Se deberá verificar que los sistemas o los modelos cumplen con el RIA.

    === Transparencia y Derechos Fundamentales <sec:transparencia-y-derechos-fundamentales>

    Cualquier persona (estudiante o personal) afectada por una decisión de un sistema de alto riesgo (ej. denegación de matrícula, evaluación negativa) tiene derecho a obtener una explicación clara sobre el papel de la IA en esa decisión.

    La UJI, como autoridad pública, debe registrar el uso de sistemas de alto riesgo en la base de datos de la UE.

    === Actuaciones necesarias para asegurar el cumplimiento del RIA <sec:actuaciones-necesarias-para-asegurar-el-cumplimiento-del-ria>

    + Revisar todos los casos de uso actuales y futuros e identificar si hay alguno de "Alto Riesgo" (evaluación, admisión, RRHH). Verificar que no haya ningún caso de uso que esté prohibido (art. 6)

    + Guías de Estilo y Procedimientos: Incluir en los ficheros maestros (`TECNOLOGÍA.md`) la obligación de transparencia (etiquetado de contenido sintético) y logs automáticos (Art. 12, Art. 50).

    + Formación Obligatoria (Alfabetización). Desarrollar e implementar el plan de formación para cumplir con el Art. 4, asegurando que el personal entienda las limitaciones de la IA (art. 4).

    + Protocolo de Evaluación de Impacto (EIPD-DDFF):Crear un procedimiento estándar para realizar la evaluación de impacto en derechos fundamentales antes de desplegar cualquier IA de alto riesgo (Art. 27).

    + Establecer mecanismos para auditar que los datos de entrenamiento de las herramientas propias no tengan sesgos discriminatorios. (Art. 10).

]

#set heading(numbering: none)
= Ideas pendientes de trasladar al documento

- La IA en la selección del personal
- La IA en la evaluación del desempeño: debemos incorporar métricas sobre la capacitación en el uso de IA como factor clave en la evaluación del personal
