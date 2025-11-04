import { Inventory, SlotWithItem } from '../../typings';
import React, { Fragment, useMemo } from 'react';
import { Items } from '../../store/items';
import { Locale } from '../../store/locale';
import ReactMarkdown from 'react-markdown';
import { useAppSelector } from '../../store';
import { Clock } from '../utils/icons/IconDefinitions';
import { getItemUrl } from '../../helpers';
import Divider from '../utils/Divider';

const SlotTooltip: React.ForwardRefRenderFunction<
  HTMLDivElement,
  { item: SlotWithItem; inventoryType: Inventory['type']; style: React.CSSProperties }
> = ({ item, inventoryType, style }, ref) => {
  const additionalMetadata = useAppSelector((state) => state.inventory.additionalMetadata);
  const itemData = useMemo(() => Items[item.name], [item]);

  const getRarityInfo = () => {
    if (!item) return null;
    let rarity = item.metadata?.rarity || item.rarity || itemData?.rarity;

    if (rarity === undefined || rarity === null || isNaN(rarity)) {
      rarity = 1;
    }

    const rarityNames = {
      1: 'COMMON',
      2: 'UNCOMMON',
      3: 'RARE',
      4: 'EPIC',
      5: 'OBJECTIVE',
      6: 'LEGENDARY',
      7: 'EXOTIC',
    };

    const rarityColors = {
      1: 'hsl(0, 0%, 70%)', // Common
      2: 'hsl(120, 60%, 50%)', // Uncommon
      3: 'hsl(210, 70%, 55%)', // Rare
      4: 'hsl(280, 70%, 60%)', // Epic
      5: 'hsl(45, 80%, 55%)', // Objective
      6: 'hsl(30, 80%, 55%)', // Legendary
      7: 'hsl(180, 70%, 60%)', // Exotic
    };

    return {
      name: rarityNames[rarity as keyof typeof rarityNames],
      color: rarityColors[rarity as keyof typeof rarityColors],
    };
  };

  const renderMetadataField = (key: string, value: any) => {
    if (key === 'Cleans In' && typeof value === 'number') {
      const date = new Date(value * 1000);
      const formattedDate = date.toLocaleString();
      return (
        <p key={key}>
          {key}: {formattedDate}
        </p>
      );
    }

    if (typeof value === 'string') {
      if (value.includes('\n')) {
        return (
          <p key={key} style={{ whiteSpace: 'pre-line' }}>
            {value}
          </p>
        );
      }

      const fieldPattern = /([A-Za-z]+):\s*([^A-Z]*?)(?=[A-Z][a-z]*:|$)/g;
      const matches = [...value.matchAll(fieldPattern)];

      if (matches.length > 1) {
        return matches.map((match, index) => (
          <p key={`${key}-${index}`}>
            {match[1]}: {match[2].trim()}
          </p>
        ));
      } else if (value.includes(' ')) {
        return (
          <p key={key}>
            {key}: {value}
          </p>
        );
      }
    }

    if (typeof value === 'object' && value !== null && !Array.isArray(value)) {
      return (
        <div key={key}>
          <p>
            <strong>{key}:</strong>
          </p>
          {Object.entries(value).map(([objKey, objValue]) => (
            <p key={`${key}-${objKey}`} style={{ marginLeft: '10px', fontSize: '0.9em' }}>
              {objKey}: {typeof objValue === 'object' ? JSON.stringify(objValue) : String(objValue)}
            </p>
          ))}
        </div>
      );
    }

    if (Array.isArray(value)) {
      return (
        <div key={key}>
          <p>
            <strong>{key}:</strong>
          </p>
          {value.map((item, index) => (
            <p key={`${key}-${index}`} style={{ marginLeft: '10px', fontSize: '0.9em' }}>
              {typeof item === 'object' ? JSON.stringify(item) : String(item)}
            </p>
          ))}
        </div>
      );
    }

    return (
      <p key={key}>
        {key}: {value}
      </p>
    );
  };
  const ingredients = useMemo(() => {
    if (!item.ingredients) return null;
    return Object.entries(item.ingredients).sort((a, b) => a[1] - b[1]);
  }, [item]);
  const description = item.metadata?.description || itemData?.description;
  const ammoName = itemData?.ammoName && Items[itemData?.ammoName]?.label;

  const hasAdditionalData = useMemo(() => {
    if (!itemData) return false;

    return !!(
      description ||
      item.durability !== undefined ||
      item.metadata?.ammo !== undefined ||
      ammoName ||
      item.metadata?.serial ||
      (item.metadata?.components && item.metadata?.components[0]) ||
      item.metadata?.weapontint ||
      additionalMetadata.some(
        (data: { metadata: string; value: string }) => item.metadata && item.metadata[data.metadata]
      )
    );
  }, [itemData, description, item.durability, item.metadata, ammoName, additionalMetadata]);

  return (
    <>
      {!itemData ? (
        <div className="tooltip-wrapper" ref={ref} style={style}>
          <div className="tooltip-header-wrapper">
            <p>{item.name}</p>
            {getRarityInfo() && (
              <p className="tooltip-rarity" style={{ color: getRarityInfo()?.color }}>
                {getRarityInfo()?.name}
              </p>
            )}
          </div>
          {hasAdditionalData && <Divider />}
        </div>
      ) : (
        <div style={{ ...style }} className="tooltip-wrapper" ref={ref}>
          <div className="tooltip-header-wrapper">
            <p>{item.metadata?.label || itemData.label || item.name}</p>
            <div>
              {inventoryType === 'crafting' ? (
                <div className="tooltip-crafting-duration">
                  <Clock />
                  <p>{(item.duration !== undefined ? item.duration : 3000) / 1000}s</p>
                </div>
              ) : (
                <p>{item.metadata?.type}</p>
              )}
              {getRarityInfo() && (
                <p className="tooltip-rarity" style={{ color: getRarityInfo()?.color }}>
                  {getRarityInfo()?.name}
                </p>
              )}
            </div>
          </div>
          {hasAdditionalData && <Divider />}
          {description && (
            <div className="tooltip-description">
              <ReactMarkdown className="tooltip-markdown">{description}</ReactMarkdown>
            </div>
          )}
          {inventoryType !== 'crafting' ? (
            <>
              {item.durability !== undefined && (
                <p>
                  {Locale.ui_durability}: {Math.trunc(item.durability)}
                </p>
              )}
              {item.metadata?.ammo !== undefined && (
                <p>
                  {Locale.ui_ammo}: {item.metadata.ammo}
                </p>
              )}
              {ammoName && (
                <p>
                  {Locale.ammo_type}: {ammoName}
                </p>
              )}
              {item.metadata?.serial && (
                <p>
                  {Locale.ui_serial}: {item.metadata.serial}
                </p>
              )}
              {item.metadata?.components && item.metadata?.components[0] && (
                <p>
                  {Locale.ui_components}:{' '}
                  {(item.metadata?.components).map((component: string, index: number, array: []) =>
                    index + 1 === array.length ? Items[component]?.label : Items[component]?.label + ', '
                  )}
                </p>
              )}
              {item.metadata?.weapontint && (
                <p>
                  {Locale.ui_tint}: {item.metadata.weapontint}
                </p>
              )}
              {additionalMetadata.map((data: { metadata: string; value: string }, index: number) => (
                <Fragment key={`metadata-${index}`}>
                  {item.metadata &&
                    item.metadata[data.metadata] !== undefined &&
                    renderMetadataField(data.value, item.metadata[data.metadata])}
                </Fragment>
              ))}
            </>
          ) : (
            <div className="tooltip-ingredients">
              {ingredients &&
                ingredients.map((ingredient) => {
                  const [item, count] = [ingredient[0], ingredient[1]];
                  return (
                    <div className="tooltip-ingredient" key={`ingredient-${item}`}>
                      <img src={item ? getItemUrl(item) : 'none'} alt="item-image" />
                      <p>
                        {count >= 1
                          ? `${count}x ${Items[item]?.label || item}`
                          : count === 0
                          ? `${Items[item]?.label || item}`
                          : count < 1 && `${count * 100}% ${Items[item]?.label || item}`}
                      </p>
                    </div>
                  );
                })}
            </div>
          )}
        </div>
      )}
    </>
  );
};

export default React.forwardRef(SlotTooltip);
